
# 导入常见的类型
from typing import Any, Dict, List, Union
from numpy import ndarray, number
from torch import Tensor, nn
from scipy.sparse import csr_matrix, csc_matrix, coo_matrix
from datetime import datetime, date, time
from .py2typ_matplot import Py2TypPlot
from matplotlib.figure import Figure

class Py2Typ:
    @staticmethod
    def escape_string(s: str) -> str:
        """
        将Python字符串转义为Typst字面量
        :param s: Python字符串
        :return: 转义后的Typst字符串
        """
        escape_map = {
            '\\': '\\\\',
            '"': '\\"',
            '\n': '\\n',
            '\t': '\\t',
            '\r': '\\r'
        }
        result = ''
        for char in s:
            result += escape_map.get(char, char)
        return result
    @staticmethod
    def type2typ(obj, **kwargs) -> Dict:
        """
        将python类型转换为typst的数据
        :param obj: python类型
        :return: typst的数据
        """
        if isinstance(obj, bool):
            return {"type": "bool", "value": obj}
        if isinstance(obj, (tuple, set, frozenset)):
            return {"type": "array", "value": [Py2Typ.type2typ(i) for i in obj]}
        if isinstance(obj, (datetime, date)):
            return {"type": "str", "value": obj.isoformat()}
        if isinstance(obj, time):
            return {"type": "str", "value": obj.strftime("%H:%M:%S")}
        if isinstance(obj, (bytes, bytearray)):
            return {"type": "str", "value": obj.hex()}
        if isinstance(obj, complex):
            return {"type": "str", "value": str(obj)}
        if isinstance(obj, int):
            return {"type": "number", "value": obj}
        if isinstance(obj, int):
            return {"type": "number", "value": obj}
        if isinstance(obj, float):
            return {"type": "number", "value": obj}
        if isinstance(obj, str):
            return {"type": "str", "value": obj}
        if isinstance(obj, list):
            return {"type": "array", "value": [Py2Typ.type2typ(i) for i in obj]}
        if isinstance(obj, dict):
            return {"type": "dict", "value": {k: Py2Typ.type2typ(v) for k, v in obj.items()}}
        if isinstance(obj, ndarray):
            return {"type": "array", "value": [Py2Typ.type2typ(i) for i in obj.tolist()]}
        if isinstance(obj, number):
            return {"type": "number", "value": obj}
        if isinstance(obj, Tensor):
            return {"type": "array", "value": [Py2Typ.type2typ(i) for i in obj.tolist()]}
        if isinstance(obj, nn.Module):
            return {"type": "str", "value": str(obj)}
        if isinstance(obj, csr_matrix):
            return {"type": "array", "value": [Py2Typ.type2typ(i) for i in obj.toarray().tolist()]}
        if isinstance(obj, csc_matrix):
            return {"type": "array", "value": [Py2Typ.type2typ(i) for i in obj.toarray().tolist()]}
        if isinstance(obj, coo_matrix):
            return {"type": "array", "value": [Py2Typ.type2typ(i) for i in obj.toarray().tolist()]}
        if isinstance(obj, Figure):
            return {"type": "matplot_figure", "value": Py2TypPlot.plot2typ(obj, **kwargs)}
        if obj is None:
            return {"type": "none", "value": None}
        raise TypeError(f"Unsupported type: {type(obj)}, value: {str(obj)}")
    
    @staticmethod
    def cast_to_typ(obj_typ):
        """
        将python类型转换为typst的数据
        :param obj: python类型
        :return: typst的数据
        """

        if obj_typ["type"] == "number":
            return str(obj_typ["value"])
        if obj_typ["type"] == "str":
            return '"' + Py2Typ.escape_string(obj_typ["value"]) + '"'
        if obj_typ["type"] == "array":
            if len(obj_typ["value"]) == 1:
                return f"({Py2Typ.cast_to_typ(obj_typ['value'][0])},)"
            return f"({', '.join([Py2Typ.cast_to_typ(i) for i in obj_typ['value']])})"
        if obj_typ["type"] == "dict":
            return f"({', '.join([f'{k}: {Py2Typ.cast_to_typ(v)}' for k, v in obj_typ['value'].items()])})"
        if obj_typ["type"] == "bool":
            return "true" if obj_typ["value"] else "false"
        if obj_typ["type"] == "matplot_figure":
            return obj_typ["value"]
        raise TypeError(f"Unsupported type: {obj_typ['type']}, value: {str(obj_typ['value'])}")
    @staticmethod
    def typ_of(obj_dict: Dict):
        """
        根据键名将对象转换为typst的数据
        """
        typ_str = ""
        for key, value in obj_dict.items():
            obj_dict[key] = Py2Typ.type2typ(value)
        typ_str = "\n".join([f"#let {k} = {Py2Typ.cast_to_typ(v)}" for k, v in obj_dict.items()])
        return typ_str