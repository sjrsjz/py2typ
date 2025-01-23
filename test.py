from utils.py2typ_module import Py2TypModule
from utils.py2typ_matplot import Py2TypPlot
import numpy as np
import matplotlib.pyplot as plt

if __name__ == "__main__":
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
    obj3 = [1]

    obj4 = np.array([1, 2, 3, 4])

    typ_module = Py2TypModule("test")
    typ_module.add_variable("obj", obj)
    typ_module.add_variable("obj2", obj2)
    typ_module.add_variable("obj3", obj3)
    typ_module.add_variable("obj4", obj4)


    # Create matplotlib plot
    plt.figure(figsize=(5, 2))
    x = np.linspace(0, 10, 100)
    plt.plot(x, np.sin(x), label="sin(x)", color="r", linestyle="--")
    plt.plot(x, np.cos(x), label="cos(x)", color="b", linestyle=":")
    plt.scatter([1, 2, 3], [4, 5, 6])

    plt.xlabel("x坐标")
    plt.ylabel("y坐标")
    plt.title("*测试图表*")
    
    fig = plt.gcf()
    typ_module.add_variable("plot", fig)
    typ_module.save()
