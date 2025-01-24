import ast
import inspect
import textwrap
from typing import Any, Union

class Ast2Typ:
    @staticmethod
    def get_ast(obj: Union[str, Any]) -> ast.AST:
        """
        获取Python对象或代码字符串的AST
        
        :param obj: Python对象或代码字符串
        :return: AST对象
        """
        if isinstance(obj, str):
            # 如果输入是字符串,直接解析
            return ast.parse(obj)
        else:
            # 如果是Python对象,先获取源码
            try:
                source = inspect.getsource(obj)
                source = textwrap.dedent(inspect.getsource(obj))
                return ast.parse(source)
            except (TypeError, OSError) as e:
                raise ValueError(f"Unable to parse: {e}, source: {source}")

    def __shift_space(shift):
        return "  " * shift
    @staticmethod
    def ast_to_typ(ast_obj: ast.AST, shift = 0) -> str:
        """
        将AST对象转换为typst的数据
        
        :param ast_obj: AST对象
        :return: typst的数据
        """
        if isinstance(ast_obj, ast.Module):
            return f"\n".join(Ast2Typ.ast_to_typ(node, shift=shift) for node in ast_obj.body)
        
        elif isinstance(ast_obj, ast.FunctionDef):
            params = ", ".join(p.arg for p in ast_obj.args.args)
            body = Ast2Typ.__shift_space(shift + 1) + f"\n{Ast2Typ.__shift_space(shift + 1)}".join(Ast2Typ.ast_to_typ(node, shift = shift + 1) for node in ast_obj.body)
            return f"#let {ast_obj.name}({params}) = {{\n{body}\n{Ast2Typ.__shift_space(shift)}}}"
            
        elif isinstance(ast_obj, ast.Return):
            if ast_obj.value:
                return f"return ({Ast2Typ.ast_to_typ(ast_obj.value,shift)})"
            return "return ()"
            
        elif isinstance(ast_obj, ast.Name):
            return ast_obj.id
            
        elif isinstance(ast_obj, ast.Constant):
            if isinstance(ast_obj.value, str):
                return f'"{ast_obj.value}"'
            if isinstance(ast_obj.value,bool):
                return "true" if ast_obj.value else "false"
            return str(ast_obj.value)
            
        elif isinstance(ast_obj, (ast.List, ast.Tuple)):
            elements = ", ".join(Ast2Typ.ast_to_typ(elt,shift) for elt in ast_obj.elts)
            if len(ast_obj.elts) == 1:
                return f"({elements},)"
            return f"({elements})"
            
        elif isinstance(ast_obj, ast.Call):
            func = Ast2Typ.ast_to_typ(ast_obj.func,shift)
            args = ", ".join(Ast2Typ.ast_to_typ(arg,shift) for arg in ast_obj.args)
            return f"{func}({args})"
        elif isinstance(ast_obj, ast.Assign):
            targets = ", ".join(Ast2Typ.ast_to_typ(target,shift) for target in ast_obj.targets)
            value = Ast2Typ.ast_to_typ(ast_obj.value,shift)
            return f"let {targets} = {value}"
        elif isinstance(ast_obj, ast.BinOp):
            left = Ast2Typ.ast_to_typ(ast_obj.left,shift)
            right = Ast2Typ.ast_to_typ(ast_obj.right,shift)
            op = Ast2Typ.ast_to_typ(ast_obj.op,shift)
            return f"{left} {op} {right}"
        elif isinstance(ast_obj, ast.Add):
            return "+"
        elif isinstance(ast_obj, ast.Sub):
            return "-"
        elif isinstance(ast_obj, ast.Mult):
            return "*"
        elif isinstance(ast_obj, ast.Div):
            return "/"
        elif isinstance(ast_obj, ast.FloorDiv):
            return "//"
        elif isinstance(ast_obj, ast.Mod):
            return "%"
        elif isinstance(ast_obj, ast.Pow):
            return "**"
        elif isinstance(ast_obj, ast.USub):
            return "-"
        elif isinstance(ast_obj, ast.UAdd):
            return "+"
        elif isinstance(ast_obj, ast.Compare):
            left = Ast2Typ.ast_to_typ(ast_obj.left,shift)
            comparators = ", ".join(Ast2Typ.ast_to_typ(comparator,shift) for comparator in ast_obj.comparators)
            ops = ", ".join(Ast2Typ.ast_to_typ(op,shift) for op in ast_obj.ops)
            return f"{left} {ops} {comparators}"
        elif isinstance(ast_obj, ast.Eq):
            return "=="
        elif isinstance(ast_obj, ast.NotEq):
            return "!="
        elif isinstance(ast_obj, ast.Lt):
            return "<"
        elif isinstance(ast_obj, ast.LtE):
            return "<="
        elif isinstance(ast_obj, ast.Gt):
            return ">"
        elif isinstance(ast_obj, ast.GtE):
            return ">="
        elif isinstance(ast_obj, ast.Is):
            return "is"
        elif isinstance(ast_obj, ast.IsNot):
            return "is not"
        elif isinstance(ast_obj, ast.In):
            return "in"
        elif isinstance(ast_obj, ast.NotIn):
            return "not in"
        elif isinstance(ast_obj, ast.BoolOp):
            op = Ast2Typ.ast_to_typ(ast_obj.op,shift)
            return f" {op} ".join(Ast2Typ.ast_to_typ(value,shift) for value in ast_obj.values)
        elif isinstance(ast_obj, ast.And):
            return "and"
        elif isinstance(ast_obj, ast.Or):
            return "or"
        elif isinstance(ast_obj, ast.Attribute):
            value = Ast2Typ.ast_to_typ(ast_obj.value,shift)
            attr = ast_obj.attr
            return f"{value}.{attr}"
        elif isinstance(ast_obj, ast.Subscript):
            value = Ast2Typ.ast_to_typ(ast_obj.value,shift)
            slice = Ast2Typ.ast_to_typ(ast_obj.slice,shift)
            return f"{value}.at({slice})"
        elif isinstance(ast_obj, ast.Index):
            return Ast2Typ.ast_to_typ(ast_obj.value,shift)
        elif isinstance(ast_obj, ast.Slice):
            lower = Ast2Typ.ast_to_typ(ast_obj.lower,shift)
            upper = Ast2Typ.ast_to_typ(ast_obj.upper,shift)
            step = Ast2Typ.ast_to_typ(ast_obj.step,shift)
            return f"{lower}:{upper}:{step}"
        elif isinstance(ast_obj, ast.ExtSlice):
            dims = ", ".join(Ast2Typ.ast_to_typ(dim,shift) for dim in ast_obj.dims)
            return f"{dims}"
        elif isinstance(ast_obj, ast.If):
            test = Ast2Typ.ast_to_typ(ast_obj.test,shift)
            body = Ast2Typ.__shift_space(shift + 1) + f"\n{Ast2Typ.__shift_space(shift + 1)}".join(Ast2Typ.ast_to_typ(node,shift=shift+1) for node in ast_obj.body)
            orelse = Ast2Typ.__shift_space(shift + 1) + f"\n{Ast2Typ.__shift_space(shift + 1)}".join(Ast2Typ.ast_to_typ(node,shift=shift+1) for node in ast_obj.orelse)
            return f"if ({test}) {{\n{body}{Ast2Typ.__shift_space(shift)}\n{Ast2Typ.__shift_space(shift)}}} else {{\n{orelse}\n{Ast2Typ.__shift_space(shift)}}}"
        elif isinstance(ast_obj, ast.Expr):
            return Ast2Typ.ast_to_typ(ast_obj.value,shift)
        elif isinstance(ast_obj, ast.Pass):
            return ""
        elif isinstance(ast_obj, ast.alias):
            return ast_obj.name
        elif isinstance(ast_obj, ast.Import):
            names = ", ".join(Ast2Typ.ast_to_typ(name,shift) for name in ast_obj.names)
            return f"import {names}"
        elif isinstance(ast_obj, ast.ImportFrom):
            module = ast_obj.module
            names = ", ".join(Ast2Typ.ast_to_typ(name,shift) for name in ast_obj.names)
            return f"import {names}: {module}"
        elif isinstance(ast_obj, ast.For):
            target = Ast2Typ.ast_to_typ(ast_obj.target, shift)
            iter = Ast2Typ.ast_to_typ(ast_obj.iter, shift)
            body = Ast2Typ.__shift_space(shift + 1) + f"\n{Ast2Typ.__shift_space(shift + 1)}".join(
                Ast2Typ.ast_to_typ(node, shift=shift+1) for node in ast_obj.body)
            return f"for {target} in {iter} {{\n{body}\n{Ast2Typ.__shift_space(shift)}}}"

        elif isinstance(ast_obj, ast.While):
            test = Ast2Typ.ast_to_typ(ast_obj.test, shift)
            body = Ast2Typ.__shift_space(shift + 1) + f"\n{Ast2Typ.__shift_space(shift + 1)}".join(
                Ast2Typ.ast_to_typ(node, shift=shift+1) for node in ast_obj.body)
            return f"while {test} {{\n{body}\n{Ast2Typ.__shift_space(shift)}}}"

        elif isinstance(ast_obj, ast.ClassDef):
            bases = ", ".join(Ast2Typ.ast_to_typ(base, shift) for base in ast_obj.bases)
            body = Ast2Typ.__shift_space(shift + 1) + f"\n{Ast2Typ.__shift_space(shift + 1)}".join(
                Ast2Typ.ast_to_typ(node, shift=shift+1) for node in ast_obj.body)
            return f"#let {ast_obj.name} = class({bases}) {{\n{body}\n{Ast2Typ.__shift_space(shift)}}}"

        elif isinstance(ast_obj, ast.AugAssign):
            target = Ast2Typ.ast_to_typ(ast_obj.target, shift)
            op = Ast2Typ.ast_to_typ(ast_obj.op, shift)
            value = Ast2Typ.ast_to_typ(ast_obj.value, shift)
            return f"{target} = {target} {op} {value}"

        elif isinstance(ast_obj, ast.ListComp):
            elt = Ast2Typ.ast_to_typ(ast_obj.elt, shift)
            generators = " ".join(Ast2Typ.ast_to_typ(gen, shift) for gen in ast_obj.generators)
            return f"[{elt} for {generators}]"

        elif isinstance(ast_obj, ast.comprehension):
            target = Ast2Typ.ast_to_typ(ast_obj.target, shift)
            iter = Ast2Typ.ast_to_typ(ast_obj.iter, shift)
            ifs = " ".join(f"if {Ast2Typ.ast_to_typ(if_, shift)}" for if_ in ast_obj.ifs)
            return f"{target} in {iter} {ifs}"

        elif isinstance(ast_obj, ast.Try):
            body = Ast2Typ.__shift_space(shift + 1) + f"\n{Ast2Typ.__shift_space(shift + 1)}".join(
                Ast2Typ.ast_to_typ(node, shift=shift+1) for node in ast_obj.body)
            handlers = "\n".join(Ast2Typ.ast_to_typ(h, shift) for h in ast_obj.handlers)
            return f"try {{\n{body}\n{Ast2Typ.__shift_space(shift)}}} {handlers}"

        elif isinstance(ast_obj, ast.ExceptHandler):
            type_ = Ast2Typ.ast_to_typ(ast_obj.type, shift) if ast_obj.type else ""
            name = f" as {ast_obj.name}" if ast_obj.name else ""
            body = Ast2Typ.__shift_space(shift + 1) + f"\n{Ast2Typ.__shift_space(shift + 1)}".join(
                Ast2Typ.ast_to_typ(node, shift=shift+1) for node in ast_obj.body)
            return f"except {type_}{name} {{\n{body}\n{Ast2Typ.__shift_space(shift)}}}"

        elif isinstance(ast_obj, ast.Break):
            return "break"

        elif isinstance(ast_obj, ast.Continue):
            return "continue"
        elif isinstance(ast_obj, ast.UnaryOp):
            op = Ast2Typ.ast_to_typ(ast_obj.op, shift)
            operand = Ast2Typ.ast_to_typ(ast_obj.operand, shift)
            return f"{op} {operand}"
        elif isinstance(ast_obj, ast.Not):
            return "not"
        elif isinstance(ast_obj, ast.Invert):
            return "~"
        elif isinstance(ast_obj, ast.BitAnd):
            return "&"
        elif isinstance(ast_obj, ast.BitOr):
            return "|"
        elif isinstance(ast_obj, ast.BitXor):
            return "^"
        elif isinstance(ast_obj, ast.LShift):
            return "<<"
        elif isinstance(ast_obj, ast.RShift):
            return ">>"
        elif isinstance(ast_obj, ast.IfExp):
            test = Ast2Typ.ast_to_typ(ast_obj.test, shift)
            body = Ast2Typ.ast_to_typ(ast_obj.body, shift)
            orelse = Ast2Typ.ast_to_typ(ast_obj.orelse, shift)
            return f"if ({test}) {{{body}}} else {{{orelse}}}"

        else:
            return f"/* Unsupported AST node: {type(ast_obj).__name__} */"
        


