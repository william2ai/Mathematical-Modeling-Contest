import numpy as np


def loadDataSet(fileName):
"""
加载数据
:param fileName: 文件名
:return: 
 xArr - x数据集
yArr - y数据集
"""
numFeat = len(open(fileName).readline().split('\t')) - 1
xArr = [] 
yArr = []
f = open(fileName)
for line in f.readlines():
    lineArr =[]
    curLine = line.strip().split('\t')
    for i in range(numFeat):
        lineArr.append(float(curLine[i]))
    xArr.append(lineArr)
    yArr.append(float(curLine[-1]))
return xArr, yArr
def ridgeRegres(xMat, yMat, lam = 0.2):
"""
 岭回归
:param xMat: x数据集
:param yMat: y数据集
:param lam: 缩减系数
:return: 
  ws - 回归系数
"""
xTx = xMat.T * xMat
denom = xTx + np.eye(np.shape(xMat)[1]) * lam
if np.linalg.det(denom) == 0.0:
    print("矩阵为奇异矩阵,不能转置")
    return
ws = denom.I * (xMat.T * yMat)
return ws
