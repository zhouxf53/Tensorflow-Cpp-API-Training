
*
xPlaceholder*
dtype0*
shape: 
*
yPlaceholder*
dtype0*
shape: 
K
truncated_normal/shapeConst*
dtype0*
valueB"       
B
truncated_normal/meanConst*
dtype0*
valueB
 *    
D
truncated_normal/stddevConst*
dtype0*
valueB
 *���=
z
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
dtype0*
seed2 *

seed *
T0
_
truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0
M
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0
Z
VariableVariable*
dtype0*
shape
: *
	container *
shared_name 
�
Variable/AssignAssignVariabletruncated_normal*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0
I
Variable/readIdentityVariable*
_class
loc:@Variable*
T0
6
ConstConst*
dtype0*
valueB*    
X

Variable_1Variable*
dtype0*
shape:*
	container *
shared_name 

Variable_1/AssignAssign
Variable_1Const*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0
O
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0
M
truncated_normal_1/shapeConst*
dtype0*
valueB"      
D
truncated_normal_1/meanConst*
dtype0*
valueB
 *    
F
truncated_normal_1/stddevConst*
dtype0*
valueB
 *���=
~
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
dtype0*
seed2 *

seed *
T0
e
truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0
S
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0
\

Variable_2Variable*
dtype0*
shape
:*
	container *
shared_name 
�
Variable_2/AssignAssign
Variable_2truncated_normal_1*
validate_shape(*
_class
loc:@Variable_2*
use_locking(*
T0
O
Variable_2/readIdentity
Variable_2*
_class
loc:@Variable_2*
T0
8
Const_1Const*
dtype0*
valueB*    
X

Variable_3Variable*
dtype0*
shape:*
	container *
shared_name 
�
Variable_3/AssignAssign
Variable_3Const_1*
validate_shape(*
_class
loc:@Variable_3*
use_locking(*
T0
O
Variable_3/readIdentity
Variable_3*
_class
loc:@Variable_3*
T0
Q
MatMulMatMulxVariable/read*
transpose_b( *
transpose_a( *
T0
K
BiasAddBiasAddMatMulVariable_1/read*
T0*
data_formatNHWC

TanhTanhBiasAdd*
T0
X
MatMul_1MatMulTanhVariable_2/read*
transpose_b( *
transpose_a( *
T0
O
	BiasAdd_1BiasAddMatMul_1Variable_3/read*
T0*
data_formatNHWC
!
y_outTanh	BiasAdd_1*
T0

subSubyy_out*
T0

SquareSquaresub*
T0

RankRankSquare*
T0
5
range/startConst*
dtype0*
value	B : 
5
range/deltaConst*
dtype0*
value	B :
.
rangeRangerange/startRankrange/delta
4
costSumSquarerange*
T0*
	keep_dims( 
'
gradients/ShapeShapecost*
T0
<
gradients/ConstConst*
dtype0*
valueB
 *  �?
A
gradients/FillFillgradients/Shapegradients/Const*
T0
3
gradients/cost_grad/ShapeShapeSquare*
T0
D
gradients/cost_grad/SizeSizegradients/cost_grad/Shape*
T0
H
gradients/cost_grad/addAddrangegradients/cost_grad/Size*
T0
Z
gradients/cost_grad/modModgradients/cost_grad/addgradients/cost_grad/Size*
T0
F
gradients/cost_grad/Shape_1Shapegradients/cost_grad/mod*
T0
I
gradients/cost_grad/range/startConst*
dtype0*
value	B : 
I
gradients/cost_grad/range/deltaConst*
dtype0*
value	B :
~
gradients/cost_grad/rangeRangegradients/cost_grad/range/startgradients/cost_grad/Sizegradients/cost_grad/range/delta
H
gradients/cost_grad/Fill/valueConst*
dtype0*
value	B :
f
gradients/cost_grad/FillFillgradients/cost_grad/Shape_1gradients/cost_grad/Fill/value*
T0
�
!gradients/cost_grad/DynamicStitchDynamicStitchgradients/cost_grad/rangegradients/cost_grad/modgradients/cost_grad/Shapegradients/cost_grad/Fill*
T0*
N
G
gradients/cost_grad/Maximum/yConst*
dtype0*
value	B :
q
gradients/cost_grad/MaximumMaximum!gradients/cost_grad/DynamicStitchgradients/cost_grad/Maximum/y*
T0
d
gradients/cost_grad/floordivDivgradients/cost_grad/Shapegradients/cost_grad/Maximum*
T0
b
gradients/cost_grad/ReshapeReshapegradients/Fill!gradients/cost_grad/DynamicStitch*
T0
d
gradients/cost_grad/TileTilegradients/cost_grad/Reshapegradients/cost_grad/floordiv*
T0
c
gradients/Square_grad/mul/xConst^gradients/cost_grad/Tile*
dtype0*
valueB
 *   @
K
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub*
T0
`
gradients/Square_grad/mul_1Mulgradients/cost_grad/Tilegradients/Square_grad/mul*
T0
-
gradients/sub_grad/ShapeShapey*
T0
3
gradients/sub_grad/Shape_1Shapey_out*
T0
w
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1
~
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
`
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0
�
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
d
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0
e
gradients/y_out_grad/SquareSquarey_out.^gradients/sub_grad/tuple/control_dependency_1*
T0
w
gradients/y_out_grad/sub/xConst.^gradients/sub_grad/tuple/control_dependency_1*
dtype0*
valueB
 *  �?
a
gradients/y_out_grad/subSubgradients/y_out_grad/sub/xgradients/y_out_grad/Square*
T0
q
gradients/y_out_grad/mulMul-gradients/sub_grad/tuple/control_dependency_1gradients/y_out_grad/sub*
T0
m
$gradients/BiasAdd_1_grad/BiasAddGradBiasAddGradgradients/y_out_grad/mul*
T0*
data_formatNHWC
s
)gradients/BiasAdd_1_grad/tuple/group_depsNoOp^gradients/y_out_grad/mul%^gradients/BiasAdd_1_grad/BiasAddGrad
�
1gradients/BiasAdd_1_grad/tuple/control_dependencyIdentitygradients/y_out_grad/mul*^gradients/BiasAdd_1_grad/tuple/group_deps*+
_class!
loc:@gradients/y_out_grad/mul*
T0
�
3gradients/BiasAdd_1_grad/tuple/control_dependency_1Identity$gradients/BiasAdd_1_grad/BiasAddGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*7
_class-
+)loc:@gradients/BiasAdd_1_grad/BiasAddGrad*
T0
�
gradients/MatMul_1_grad/MatMulMatMul1gradients/BiasAdd_1_grad/tuple/control_dependencyVariable_2/read*
transpose_b(*
transpose_a( *
T0
�
 gradients/MatMul_1_grad/MatMul_1MatMulTanh1gradients/BiasAdd_1_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*
T0
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
T0
f
gradients/Tanh_grad/SquareSquareTanh1^gradients/MatMul_1_grad/tuple/control_dependency*
T0
y
gradients/Tanh_grad/sub/xConst1^gradients/MatMul_1_grad/tuple/control_dependency*
dtype0*
valueB
 *  �?
^
gradients/Tanh_grad/subSubgradients/Tanh_grad/sub/xgradients/Tanh_grad/Square*
T0
r
gradients/Tanh_grad/mulMul0gradients/MatMul_1_grad/tuple/control_dependencygradients/Tanh_grad/sub*
T0
j
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/Tanh_grad/mul*
T0*
data_formatNHWC
n
'gradients/BiasAdd_grad/tuple/group_depsNoOp^gradients/Tanh_grad/mul#^gradients/BiasAdd_grad/BiasAddGrad
�
/gradients/BiasAdd_grad/tuple/control_dependencyIdentitygradients/Tanh_grad/mul(^gradients/BiasAdd_grad/tuple/group_deps**
_class 
loc:@gradients/Tanh_grad/mul*
T0
�
1gradients/BiasAdd_grad/tuple/control_dependency_1Identity"gradients/BiasAdd_grad/BiasAddGrad(^gradients/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients/BiasAdd_grad/BiasAddGrad*
T0
�
gradients/MatMul_grad/MatMulMatMul/gradients/BiasAdd_grad/tuple/control_dependencyVariable/read*
transpose_b(*
transpose_a( *
T0
�
gradients/MatMul_grad/MatMul_1MatMulx/gradients/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0
c
beta1_power/initial_valueConst*
dtype0*
_class
loc:@Variable*
valueB
 *fff?
r
beta1_powerVariable*
dtype0*
shape: *
	container *
shared_name *
_class
loc:@Variable
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0
O
beta1_power/readIdentitybeta1_power*
_class
loc:@Variable*
T0
c
beta2_power/initial_valueConst*
dtype0*
_class
loc:@Variable*
valueB
 *w�?
r
beta2_powerVariable*
dtype0*
shape: *
	container *
shared_name *
_class
loc:@Variable
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0
O
beta2_power/readIdentitybeta2_power*
_class
loc:@Variable*
T0
:
zerosConst*
dtype0*
valueB *    
|
Variable/AdamVariable*
dtype0*
shape
: *
	container *
shared_name *
_class
loc:@Variable
�
Variable/Adam/AssignAssignVariable/Adamzeros*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0
S
Variable/Adam/readIdentityVariable/Adam*
_class
loc:@Variable*
T0
<
zeros_1Const*
dtype0*
valueB *    
~
Variable/Adam_1Variable*
dtype0*
shape
: *
	container *
shared_name *
_class
loc:@Variable
�
Variable/Adam_1/AssignAssignVariable/Adam_1zeros_1*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0
W
Variable/Adam_1/readIdentityVariable/Adam_1*
_class
loc:@Variable*
T0
8
zeros_2Const*
dtype0*
valueB*    
|
Variable_1/AdamVariable*
dtype0*
shape:*
	container *
shared_name *
_class
loc:@Variable_1
�
Variable_1/Adam/AssignAssignVariable_1/Adamzeros_2*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0
Y
Variable_1/Adam/readIdentityVariable_1/Adam*
_class
loc:@Variable_1*
T0
8
zeros_3Const*
dtype0*
valueB*    
~
Variable_1/Adam_1Variable*
dtype0*
shape:*
	container *
shared_name *
_class
loc:@Variable_1
�
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1zeros_3*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0
]
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
_class
loc:@Variable_1*
T0
<
zeros_4Const*
dtype0*
valueB*    
�
Variable_2/AdamVariable*
dtype0*
shape
:*
	container *
shared_name *
_class
loc:@Variable_2
�
Variable_2/Adam/AssignAssignVariable_2/Adamzeros_4*
validate_shape(*
_class
loc:@Variable_2*
use_locking(*
T0
Y
Variable_2/Adam/readIdentityVariable_2/Adam*
_class
loc:@Variable_2*
T0
<
zeros_5Const*
dtype0*
valueB*    
�
Variable_2/Adam_1Variable*
dtype0*
shape
:*
	container *
shared_name *
_class
loc:@Variable_2
�
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1zeros_5*
validate_shape(*
_class
loc:@Variable_2*
use_locking(*
T0
]
Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
_class
loc:@Variable_2*
T0
8
zeros_6Const*
dtype0*
valueB*    
|
Variable_3/AdamVariable*
dtype0*
shape:*
	container *
shared_name *
_class
loc:@Variable_3
�
Variable_3/Adam/AssignAssignVariable_3/Adamzeros_6*
validate_shape(*
_class
loc:@Variable_3*
use_locking(*
T0
Y
Variable_3/Adam/readIdentityVariable_3/Adam*
_class
loc:@Variable_3*
T0
8
zeros_7Const*
dtype0*
valueB*    
~
Variable_3/Adam_1Variable*
dtype0*
shape:*
	container *
shared_name *
_class
loc:@Variable_3
�
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1zeros_7*
validate_shape(*
_class
loc:@Variable_3*
use_locking(*
T0
]
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
_class
loc:@Variable_3*
T0
@
train/learning_rateConst*
dtype0*
valueB
 *o�:
8
train/beta1Const*
dtype0*
valueB
 *fff?
8
train/beta2Const*
dtype0*
valueB
 *w�?
:
train/epsilonConst*
dtype0*
valueB
 *w�+2
�
train/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
_class
loc:@Variable*
use_locking( *
T0
�
!train/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon1gradients/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@Variable_1*
use_locking( *
T0
�
!train/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
_class
loc:@Variable_2*
use_locking( *
T0
�
!train/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon3gradients/BiasAdd_1_grad/tuple/control_dependency_1*
_class
loc:@Variable_3*
use_locking( *
T0
�
	train/mulMulbeta1_power/readtrain/beta1 ^train/update_Variable/ApplyAdam"^train/update_Variable_1/ApplyAdam"^train/update_Variable_2/ApplyAdam"^train/update_Variable_3/ApplyAdam*
_class
loc:@Variable*
T0
}
train/AssignAssignbeta1_power	train/mul*
validate_shape(*
_class
loc:@Variable*
use_locking( *
T0
�
train/mul_1Mulbeta2_power/readtrain/beta2 ^train/update_Variable/ApplyAdam"^train/update_Variable_1/ApplyAdam"^train/update_Variable_2/ApplyAdam"^train/update_Variable_3/ApplyAdam*
_class
loc:@Variable*
T0
�
train/Assign_1Assignbeta2_powertrain/mul_1*
validate_shape(*
_class
loc:@Variable*
use_locking( *
T0
�
trainNoOp ^train/update_Variable/ApplyAdam"^train/update_Variable_1/ApplyAdam"^train/update_Variable_2/ApplyAdam"^train/update_Variable_3/ApplyAdam^train/Assign^train/Assign_1
�
init_all_vars_opNoOp^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^beta1_power/Assign^beta2_power/Assign^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign"	