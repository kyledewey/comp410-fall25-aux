# evaluator of arithmetic expressions,
# represented as abstract syntax trees

# public class IntegerNode {
#   public int value;
#   public IntegerNode(int value) {
#     this.value = value;
#   }
# }
class IntegerNode:
    def __init__(self, value):
        self.value = value

class PlusNode:
    def __init__(self, left, right):
        self.left = left
        self.right = right

class MinusNode:
    def __init__(self, left, right):
        self.left = left
        self.right = right

class MultiplyNode:
    def __init__(self, left, right):
        self.left = left
        self.right = right

# (2 - 1) + 3
# PlusNode(
#   MinusNode(IntegerNode(2),
#             IntegerNode(1)),
#   IntegerNode(3))

# takes an AST node
# returns what that node evaluates to
def evaluate(ast):
    # if (ast instanceof IntegerNode) {
    if isinstance(ast, IntegerNode):
        return ast.value
    elif isinstance(ast, PlusNode):
        left_side = evaluate(ast.left)
        right_side = evaluate(ast.right)
        return left_side + right_side
    elif isinstance(ast, MinusNode):
        return evaluate(ast.left) - evaluate(ast.right)
    elif isinstance(ast, MultiplyNode):
        return evaluate(ast.left) * evaluate(ast.right)
