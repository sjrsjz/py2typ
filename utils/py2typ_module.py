from typing import Any, Dict, List, Union
from .py2typ_type import Py2Typ
"""
将python类型转换为typst的数据
"""



class Py2TypModule:
    """
    用于生成typst的模块
    """
    def __init__(self, module_name: str):
        self.__variables = {}
        self.__module_name = module_name
    def add_variable(self, name: str, value: Any, direct_str: bool = False):
        self.__variables[name] = (Py2Typ.type2typ(value), direct_str)
    def remove_variable(self, name: str):
        self.__variables.pop(name)    
    def to_typ(self):
        typ_str = "\n".join([f"#let {k} = {(v[0]['value'] if v[1] else Py2Typ.cast_to_typ(v[0]))}" for k, v in self.__variables.items()])
        # 导入cetz
        typ_str = '#import "@preview/cetz:0.3.1" as cetz'+ "\n" + typ_str

        return typ_str
    def __str__(self):
        return (self.__module_name, self.to_typ())
    def save(self, path: str = None):
        if path is None:
            path = self.__module_name + ".typ"
        with open(path, "w", encoding='utf-8') as f:
            f.write(self.to_typ())

def __test__():
    obj = {
        "a": 1,
        "b": 2,
        "c": {
            "d": 3,
            "e": 4
        }
    }
    obj2 = {
        "value": 1,
        "name": "test"
    }
    obj3 = [1, 2, 3, 4]

    typ_module = Py2TypModule("test")
    typ_module.add_variable("obj", obj)
    typ_module.add_variable("obj2", obj2)
    typ_module.add_variable("obj3", obj3)
    print(typ_module.to_typ())


if __name__ == "__main__":
    __test__()