Ż˛
ý
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.14.02unknownĽî
r
dense_187_inputPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
dense_187/random_uniform/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
a
dense_187/random_uniform/minConst*
valueB
 *8Ő˝*
dtype0*
_output_shapes
: 
a
dense_187/random_uniform/maxConst*
valueB
 *8Ő=*
dtype0*
_output_shapes
: 
­
&dense_187/random_uniform/RandomUniformRandomUniformdense_187/random_uniform/shape*
seedą˙ĺ)*
T0*
dtype0*
_output_shapes
:	'*
seed2źĘŽ

dense_187/random_uniform/subSubdense_187/random_uniform/maxdense_187/random_uniform/min*
T0*
_output_shapes
: 

dense_187/random_uniform/mulMul&dense_187/random_uniform/RandomUniformdense_187/random_uniform/sub*
T0*
_output_shapes
:	'

dense_187/random_uniformAdddense_187/random_uniform/muldense_187/random_uniform/min*
T0*
_output_shapes
:	'

dense_187/kernel
VariableV2*
shape:	'*
shared_name *
dtype0*
_output_shapes
:	'*
	container 
Ĺ
dense_187/kernel/AssignAssigndense_187/kerneldense_187/random_uniform*
use_locking(*
T0*#
_class
loc:@dense_187/kernel*
validate_shape(*
_output_shapes
:	'

dense_187/kernel/readIdentitydense_187/kernel*
T0*#
_class
loc:@dense_187/kernel*
_output_shapes
:	'
^
dense_187/ConstConst*
valueB'*    *
dtype0*
_output_shapes	
:'
|
dense_187/bias
VariableV2*
shape:'*
shared_name *
dtype0*
_output_shapes	
:'*
	container 
˛
dense_187/bias/AssignAssigndense_187/biasdense_187/Const*
use_locking(*
T0*!
_class
loc:@dense_187/bias*
validate_shape(*
_output_shapes	
:'
x
dense_187/bias/readIdentitydense_187/bias*
T0*!
_class
loc:@dense_187/bias*
_output_shapes	
:'

dense_187/MatMulMatMuldense_187_inputdense_187/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙'*
transpose_a( 

dense_187/BiasAddBiasAdddense_187/MatMuldense_187/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙'
\
dense_187/ReluReludense_187/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙'
b
dropout_94/IdentityIdentitydense_187/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙'
o
dense_188/random_uniform/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
a
dense_188/random_uniform/minConst*
valueB
 *ŕ˝*
dtype0*
_output_shapes
: 
a
dense_188/random_uniform/maxConst*
valueB
 *ŕ=*
dtype0*
_output_shapes
: 
­
&dense_188/random_uniform/RandomUniformRandomUniformdense_188/random_uniform/shape*
seedą˙ĺ)*
T0*
dtype0*
_output_shapes
:	'*
seed2ěŰ

dense_188/random_uniform/subSubdense_188/random_uniform/maxdense_188/random_uniform/min*
T0*
_output_shapes
: 

dense_188/random_uniform/mulMul&dense_188/random_uniform/RandomUniformdense_188/random_uniform/sub*
T0*
_output_shapes
:	'

dense_188/random_uniformAdddense_188/random_uniform/muldense_188/random_uniform/min*
T0*
_output_shapes
:	'

dense_188/kernel
VariableV2*
shape:	'*
shared_name *
dtype0*
_output_shapes
:	'*
	container 
Ĺ
dense_188/kernel/AssignAssigndense_188/kerneldense_188/random_uniform*
use_locking(*
T0*#
_class
loc:@dense_188/kernel*
validate_shape(*
_output_shapes
:	'

dense_188/kernel/readIdentitydense_188/kernel*
T0*#
_class
loc:@dense_188/kernel*
_output_shapes
:	'
\
dense_188/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
z
dense_188/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
ą
dense_188/bias/AssignAssigndense_188/biasdense_188/Const*
use_locking(*
T0*!
_class
loc:@dense_188/bias*
validate_shape(*
_output_shapes
:
w
dense_188/bias/readIdentitydense_188/bias*
T0*!
_class
loc:@dense_188/bias*
_output_shapes
:

dense_188/MatMulMatMuldropout_94/Identitydense_188/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 

dense_188/BiasAddBiasAdddense_188/MatMuldense_188/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
PlaceholderPlaceholder*
shape:	'*
dtype0*
_output_shapes
:	'
§
AssignAssigndense_187/kernelPlaceholder*
use_locking( *
T0*#
_class
loc:@dense_187/kernel*
validate_shape(*
_output_shapes
:	'
X
Placeholder_1Placeholder*
shape:'*
dtype0*
_output_shapes	
:'
Ł
Assign_1Assigndense_187/biasPlaceholder_1*
use_locking( *
T0*!
_class
loc:@dense_187/bias*
validate_shape(*
_output_shapes	
:'
`
Placeholder_2Placeholder*
shape:	'*
dtype0*
_output_shapes
:	'
Ť
Assign_2Assigndense_188/kernelPlaceholder_2*
use_locking( *
T0*#
_class
loc:@dense_188/kernel*
validate_shape(*
_output_shapes
:	'
V
Placeholder_3Placeholder*
shape:*
dtype0*
_output_shapes
:
˘
Assign_3Assigndense_188/biasPlaceholder_3*
use_locking( *
T0*!
_class
loc:@dense_188/bias*
validate_shape(*
_output_shapes
:

IsVariableInitializedIsVariableInitializeddense_187/kernel*#
_class
loc:@dense_187/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitializeddense_187/bias*!
_class
loc:@dense_187/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializeddense_188/kernel*#
_class
loc:@dense_188/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializeddense_188/bias*!
_class
loc:@dense_188/bias*
dtype0*
_output_shapes
: 
p
initNoOp^dense_187/bias/Assign^dense_187/kernel/Assign^dense_188/bias/Assign^dense_188/kernel/Assign
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
ž
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
use_locking(*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: 
v
Adam/iterations/readIdentityAdam/iterations*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 

Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
use_locking(*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: 
^
Adam/lr/readIdentityAdam/lr*
T0*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Ž
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: 
j
Adam/beta_1/readIdentityAdam/beta_1*
T0*
_class
loc:@Adam/beta_1*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
valueB
 *wž?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Ž
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
T0*
_class
loc:@Adam/beta_2*
_output_shapes
: 
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Ş
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
use_locking(*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: 
g
Adam/decay/readIdentity
Adam/decay*
T0*
_class
loc:@Adam/decay*
_output_shapes
: 

dense_188_targetPlaceholder*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
s
dense_188_sample_weightsPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
loss/dense_188_loss/subSubdense_188/BiasAdddense_188_target*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
x
loss/dense_188_loss/SquareSquareloss/dense_188_loss/sub*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
u
*loss/dense_188_loss/Mean/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ł
loss/dense_188_loss/MeanMeanloss/dense_188_loss/Square*loss/dense_188_loss/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
,loss/dense_188_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
ľ
loss/dense_188_loss/Mean_1Meanloss/dense_188_loss/Mean,loss/dense_188_loss/Mean_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/dense_188_loss/mulMulloss/dense_188_loss/Mean_1dense_188_sample_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss/dense_188_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_188_loss/NotEqualNotEqualdense_188_sample_weightsloss/dense_188_loss/NotEqual/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/dense_188_loss/CastCastloss/dense_188_loss/NotEqual*

SrcT0
*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
c
loss/dense_188_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

loss/dense_188_loss/Mean_2Meanloss/dense_188_loss/Castloss/dense_188_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

loss/dense_188_loss/truedivRealDivloss/dense_188_loss/mulloss/dense_188_loss/Mean_2*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
loss/dense_188_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_188_loss/Mean_3Meanloss/dense_188_loss/truedivloss/dense_188_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
X
loss/mulMul
loss/mul/xloss/dense_188_loss/Mean_3*
T0*
_output_shapes
: 

metrics/mean_squared_error/subSubdense_188/BiasAdddense_188_target*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

!metrics/mean_squared_error/SquareSquaremetrics/mean_squared_error/sub*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
|
1metrics/mean_squared_error/Mean/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Č
metrics/mean_squared_error/MeanMean!metrics/mean_squared_error/Square1metrics/mean_squared_error/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
 metrics/mean_squared_error/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ş
!metrics/mean_squared_error/Mean_1Meanmetrics/mean_squared_error/Mean metrics/mean_squared_error/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
ś
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
¨
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_188_loss/Mean_3*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
ž
Etraining/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Reshape/shapeConst*
valueB:*-
_class#
!loc:@loss/dense_188_loss/Mean_3*
dtype0*
_output_shapes
:
 
?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Etraining/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Reshape/shape*
T0*
Tshape0*-
_class#
!loc:@loss/dense_188_loss/Mean_3*
_output_shapes
:
Ç
=training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/ShapeShapeloss/dense_188_loss/truediv*
T0*
out_type0*-
_class#
!loc:@loss/dense_188_loss/Mean_3*
_output_shapes
:
ł
<training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/TileTile?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Reshape=training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Shape*

Tmultiples0*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_3*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
É
?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Shape_1Shapeloss/dense_188_loss/truediv*
T0*
out_type0*-
_class#
!loc:@loss/dense_188_loss/Mean_3*
_output_shapes
:
ą
?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Shape_2Const*
valueB *-
_class#
!loc:@loss/dense_188_loss/Mean_3*
dtype0*
_output_shapes
: 
ś
=training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/ConstConst*
valueB: *-
_class#
!loc:@loss/dense_188_loss/Mean_3*
dtype0*
_output_shapes
:
ą
<training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/ProdProd?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Shape_1=training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Const*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_3*
_output_shapes
: 
¸
?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Const_1Const*
valueB: *-
_class#
!loc:@loss/dense_188_loss/Mean_3*
dtype0*
_output_shapes
:
ľ
>training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Prod_1Prod?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Shape_2?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Const_1*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_3*
_output_shapes
: 
˛
Atraining/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Maximum/yConst*
value	B :*-
_class#
!loc:@loss/dense_188_loss/Mean_3*
dtype0*
_output_shapes
: 

?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/MaximumMaximum>training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Prod_1Atraining/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Maximum/y*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_3*
_output_shapes
: 

@training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/floordivFloorDiv<training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Prod?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Maximum*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_3*
_output_shapes
: 
ő
<training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/CastCast@training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/floordiv*

SrcT0*-
_class#
!loc:@loss/dense_188_loss/Mean_3*
Truncate( *
_output_shapes
: *

DstT0
Ł
?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/truedivRealDiv<training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Tile<training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/Cast*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_3*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
>training/Adam/gradients/loss/dense_188_loss/truediv_grad/ShapeShapeloss/dense_188_loss/mul*
T0*
out_type0*.
_class$
" loc:@loss/dense_188_loss/truediv*
_output_shapes
:
ł
@training/Adam/gradients/loss/dense_188_loss/truediv_grad/Shape_1Const*
valueB *.
_class$
" loc:@loss/dense_188_loss/truediv*
dtype0*
_output_shapes
: 
Ö
Ntraining/Adam/gradients/loss/dense_188_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_188_loss/truediv_grad/Shape@training/Adam/gradients/loss/dense_188_loss/truediv_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_188_loss/truediv*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

@training/Adam/gradients/loss/dense_188_loss/truediv_grad/RealDivRealDiv?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/truedivloss/dense_188_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_188_loss/truediv*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
<training/Adam/gradients/loss/dense_188_loss/truediv_grad/SumSum@training/Adam/gradients/loss/dense_188_loss/truediv_grad/RealDivNtraining/Adam/gradients/loss/dense_188_loss/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*.
_class$
" loc:@loss/dense_188_loss/truediv*
_output_shapes
:
ľ
@training/Adam/gradients/loss/dense_188_loss/truediv_grad/ReshapeReshape<training/Adam/gradients/loss/dense_188_loss/truediv_grad/Sum>training/Adam/gradients/loss/dense_188_loss/truediv_grad/Shape*
T0*
Tshape0*.
_class$
" loc:@loss/dense_188_loss/truediv*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
<training/Adam/gradients/loss/dense_188_loss/truediv_grad/NegNegloss/dense_188_loss/mul*
T0*.
_class$
" loc:@loss/dense_188_loss/truediv*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Btraining/Adam/gradients/loss/dense_188_loss/truediv_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_188_loss/truediv_grad/Negloss/dense_188_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_188_loss/truediv*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Btraining/Adam/gradients/loss/dense_188_loss/truediv_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_188_loss/truediv_grad/RealDiv_1loss/dense_188_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_188_loss/truediv*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
<training/Adam/gradients/loss/dense_188_loss/truediv_grad/mulMul?training/Adam/gradients/loss/dense_188_loss/Mean_3_grad/truedivBtraining/Adam/gradients/loss/dense_188_loss/truediv_grad/RealDiv_2*
T0*.
_class$
" loc:@loss/dense_188_loss/truediv*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
>training/Adam/gradients/loss/dense_188_loss/truediv_grad/Sum_1Sum<training/Adam/gradients/loss/dense_188_loss/truediv_grad/mulPtraining/Adam/gradients/loss/dense_188_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*.
_class$
" loc:@loss/dense_188_loss/truediv*
_output_shapes
:
Ž
Btraining/Adam/gradients/loss/dense_188_loss/truediv_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_188_loss/truediv_grad/Sum_1@training/Adam/gradients/loss/dense_188_loss/truediv_grad/Shape_1*
T0*
Tshape0*.
_class$
" loc:@loss/dense_188_loss/truediv*
_output_shapes
: 
Ŕ
:training/Adam/gradients/loss/dense_188_loss/mul_grad/ShapeShapeloss/dense_188_loss/Mean_1*
T0*
out_type0**
_class 
loc:@loss/dense_188_loss/mul*
_output_shapes
:
Ŕ
<training/Adam/gradients/loss/dense_188_loss/mul_grad/Shape_1Shapedense_188_sample_weights*
T0*
out_type0**
_class 
loc:@loss/dense_188_loss/mul*
_output_shapes
:
Ć
Jtraining/Adam/gradients/loss/dense_188_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_188_loss/mul_grad/Shape<training/Adam/gradients/loss/dense_188_loss/mul_grad/Shape_1*
T0**
_class 
loc:@loss/dense_188_loss/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ő
8training/Adam/gradients/loss/dense_188_loss/mul_grad/MulMul@training/Adam/gradients/loss/dense_188_loss/truediv_grad/Reshapedense_188_sample_weights*
T0**
_class 
loc:@loss/dense_188_loss/mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
8training/Adam/gradients/loss/dense_188_loss/mul_grad/SumSum8training/Adam/gradients/loss/dense_188_loss/mul_grad/MulJtraining/Adam/gradients/loss/dense_188_loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/dense_188_loss/mul*
_output_shapes
:
Ľ
<training/Adam/gradients/loss/dense_188_loss/mul_grad/ReshapeReshape8training/Adam/gradients/loss/dense_188_loss/mul_grad/Sum:training/Adam/gradients/loss/dense_188_loss/mul_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/dense_188_loss/mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
:training/Adam/gradients/loss/dense_188_loss/mul_grad/Mul_1Mulloss/dense_188_loss/Mean_1@training/Adam/gradients/loss/dense_188_loss/truediv_grad/Reshape*
T0**
_class 
loc:@loss/dense_188_loss/mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
:training/Adam/gradients/loss/dense_188_loss/mul_grad/Sum_1Sum:training/Adam/gradients/loss/dense_188_loss/mul_grad/Mul_1Ltraining/Adam/gradients/loss/dense_188_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/dense_188_loss/mul*
_output_shapes
:
Ť
>training/Adam/gradients/loss/dense_188_loss/mul_grad/Reshape_1Reshape:training/Adam/gradients/loss/dense_188_loss/mul_grad/Sum_1<training/Adam/gradients/loss/dense_188_loss/mul_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/dense_188_loss/mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
=training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/ShapeShapeloss/dense_188_loss/Mean*
T0*
out_type0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
:
­
<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/SizeConst*
value	B :*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
dtype0*
_output_shapes
: 

;training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/addAdd,loss/dense_188_loss/Mean_1/reduction_indices<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Size*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
: 

;training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/modFloorMod;training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/add<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Size*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
: 
¸
?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Shape_1Const*
valueB: *-
_class#
!loc:@loss/dense_188_loss/Mean_1*
dtype0*
_output_shapes
:
´
Ctraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/range/startConst*
value	B : *-
_class#
!loc:@loss/dense_188_loss/Mean_1*
dtype0*
_output_shapes
: 
´
Ctraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/range/deltaConst*
value	B :*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
dtype0*
_output_shapes
: 
ĺ
=training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/rangeRangeCtraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/range/start<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/SizeCtraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/range/delta*

Tidx0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
:
ł
Btraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Fill/valueConst*
value	B :*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
dtype0*
_output_shapes
: 
­
<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/FillFill?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Shape_1Btraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
: 
Ź
Etraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/DynamicStitchDynamicStitch=training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/range;training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/mod=training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Shape<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Fill*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
N*
_output_shapes
:
˛
Atraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Maximum/yConst*
value	B :*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
dtype0*
_output_shapes
: 
¨
?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/MaximumMaximumEtraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/DynamicStitchAtraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Maximum/y*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
:
 
@training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/floordivFloorDiv=training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Shape?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Maximum*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
:
ş
?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_188_loss/mul_grad/ReshapeEtraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/DynamicStitch*
T0*
Tshape0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/TileTile?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Reshape@training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/floordiv*

Tmultiples0*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Shape_2Shapeloss/dense_188_loss/Mean*
T0*
out_type0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
:
Č
?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Shape_3Shapeloss/dense_188_loss/Mean_1*
T0*
out_type0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
:
ś
=training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/ConstConst*
valueB: *-
_class#
!loc:@loss/dense_188_loss/Mean_1*
dtype0*
_output_shapes
:
ą
<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/ProdProd?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Shape_2=training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
: 
¸
?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Const_1Const*
valueB: *-
_class#
!loc:@loss/dense_188_loss/Mean_1*
dtype0*
_output_shapes
:
ľ
>training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Prod_1Prod?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Shape_3?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
: 
´
Ctraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Maximum_1/yConst*
value	B :*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
dtype0*
_output_shapes
: 
Ą
Atraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Maximum_1Maximum>training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Prod_1Ctraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Maximum_1/y*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
: 

Btraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/floordiv_1FloorDiv<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/ProdAtraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Maximum_1*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
_output_shapes
: 
÷
<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/CastCastBtraining/Adam/gradients/loss/dense_188_loss/Mean_1_grad/floordiv_1*

SrcT0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*
Truncate( *
_output_shapes
: *

DstT0
Ł
?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/truedivRealDiv<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Tile<training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/Cast*
T0*-
_class#
!loc:@loss/dense_188_loss/Mean_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
;training/Adam/gradients/loss/dense_188_loss/Mean_grad/ShapeShapeloss/dense_188_loss/Square*
T0*
out_type0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
:
Š
:training/Adam/gradients/loss/dense_188_loss/Mean_grad/SizeConst*
value	B :*+
_class!
loc:@loss/dense_188_loss/Mean*
dtype0*
_output_shapes
: 
ö
9training/Adam/gradients/loss/dense_188_loss/Mean_grad/addAdd*loss/dense_188_loss/Mean/reduction_indices:training/Adam/gradients/loss/dense_188_loss/Mean_grad/Size*
T0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
: 

9training/Adam/gradients/loss/dense_188_loss/Mean_grad/modFloorMod9training/Adam/gradients/loss/dense_188_loss/Mean_grad/add:training/Adam/gradients/loss/dense_188_loss/Mean_grad/Size*
T0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
: 
­
=training/Adam/gradients/loss/dense_188_loss/Mean_grad/Shape_1Const*
valueB *+
_class!
loc:@loss/dense_188_loss/Mean*
dtype0*
_output_shapes
: 
°
Atraining/Adam/gradients/loss/dense_188_loss/Mean_grad/range/startConst*
value	B : *+
_class!
loc:@loss/dense_188_loss/Mean*
dtype0*
_output_shapes
: 
°
Atraining/Adam/gradients/loss/dense_188_loss/Mean_grad/range/deltaConst*
value	B :*+
_class!
loc:@loss/dense_188_loss/Mean*
dtype0*
_output_shapes
: 
Ű
;training/Adam/gradients/loss/dense_188_loss/Mean_grad/rangeRangeAtraining/Adam/gradients/loss/dense_188_loss/Mean_grad/range/start:training/Adam/gradients/loss/dense_188_loss/Mean_grad/SizeAtraining/Adam/gradients/loss/dense_188_loss/Mean_grad/range/delta*

Tidx0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
:
Ż
@training/Adam/gradients/loss/dense_188_loss/Mean_grad/Fill/valueConst*
value	B :*+
_class!
loc:@loss/dense_188_loss/Mean*
dtype0*
_output_shapes
: 
Ł
:training/Adam/gradients/loss/dense_188_loss/Mean_grad/FillFill=training/Adam/gradients/loss/dense_188_loss/Mean_grad/Shape_1@training/Adam/gradients/loss/dense_188_loss/Mean_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
: 
 
Ctraining/Adam/gradients/loss/dense_188_loss/Mean_grad/DynamicStitchDynamicStitch;training/Adam/gradients/loss/dense_188_loss/Mean_grad/range9training/Adam/gradients/loss/dense_188_loss/Mean_grad/mod;training/Adam/gradients/loss/dense_188_loss/Mean_grad/Shape:training/Adam/gradients/loss/dense_188_loss/Mean_grad/Fill*
T0*+
_class!
loc:@loss/dense_188_loss/Mean*
N*
_output_shapes
:
Ž
?training/Adam/gradients/loss/dense_188_loss/Mean_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/dense_188_loss/Mean*
dtype0*
_output_shapes
: 
 
=training/Adam/gradients/loss/dense_188_loss/Mean_grad/MaximumMaximumCtraining/Adam/gradients/loss/dense_188_loss/Mean_grad/DynamicStitch?training/Adam/gradients/loss/dense_188_loss/Mean_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
:

>training/Adam/gradients/loss/dense_188_loss/Mean_grad/floordivFloorDiv;training/Adam/gradients/loss/dense_188_loss/Mean_grad/Shape=training/Adam/gradients/loss/dense_188_loss/Mean_grad/Maximum*
T0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
:
Ä
=training/Adam/gradients/loss/dense_188_loss/Mean_grad/ReshapeReshape?training/Adam/gradients/loss/dense_188_loss/Mean_1_grad/truedivCtraining/Adam/gradients/loss/dense_188_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@loss/dense_188_loss/Mean*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ť
:training/Adam/gradients/loss/dense_188_loss/Mean_grad/TileTile=training/Adam/gradients/loss/dense_188_loss/Mean_grad/Reshape>training/Adam/gradients/loss/dense_188_loss/Mean_grad/floordiv*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_188_loss/Mean*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ä
=training/Adam/gradients/loss/dense_188_loss/Mean_grad/Shape_2Shapeloss/dense_188_loss/Square*
T0*
out_type0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
:
Â
=training/Adam/gradients/loss/dense_188_loss/Mean_grad/Shape_3Shapeloss/dense_188_loss/Mean*
T0*
out_type0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
:
˛
;training/Adam/gradients/loss/dense_188_loss/Mean_grad/ConstConst*
valueB: *+
_class!
loc:@loss/dense_188_loss/Mean*
dtype0*
_output_shapes
:
Š
:training/Adam/gradients/loss/dense_188_loss/Mean_grad/ProdProd=training/Adam/gradients/loss/dense_188_loss/Mean_grad/Shape_2;training/Adam/gradients/loss/dense_188_loss/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
: 
´
=training/Adam/gradients/loss/dense_188_loss/Mean_grad/Const_1Const*
valueB: *+
_class!
loc:@loss/dense_188_loss/Mean*
dtype0*
_output_shapes
:
­
<training/Adam/gradients/loss/dense_188_loss/Mean_grad/Prod_1Prod=training/Adam/gradients/loss/dense_188_loss/Mean_grad/Shape_3=training/Adam/gradients/loss/dense_188_loss/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
: 
°
Atraining/Adam/gradients/loss/dense_188_loss/Mean_grad/Maximum_1/yConst*
value	B :*+
_class!
loc:@loss/dense_188_loss/Mean*
dtype0*
_output_shapes
: 

?training/Adam/gradients/loss/dense_188_loss/Mean_grad/Maximum_1Maximum<training/Adam/gradients/loss/dense_188_loss/Mean_grad/Prod_1Atraining/Adam/gradients/loss/dense_188_loss/Mean_grad/Maximum_1/y*
T0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
: 

@training/Adam/gradients/loss/dense_188_loss/Mean_grad/floordiv_1FloorDiv:training/Adam/gradients/loss/dense_188_loss/Mean_grad/Prod?training/Adam/gradients/loss/dense_188_loss/Mean_grad/Maximum_1*
T0*+
_class!
loc:@loss/dense_188_loss/Mean*
_output_shapes
: 
ń
:training/Adam/gradients/loss/dense_188_loss/Mean_grad/CastCast@training/Adam/gradients/loss/dense_188_loss/Mean_grad/floordiv_1*

SrcT0*+
_class!
loc:@loss/dense_188_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0
¨
=training/Adam/gradients/loss/dense_188_loss/Mean_grad/truedivRealDiv:training/Adam/gradients/loss/dense_188_loss/Mean_grad/Tile:training/Adam/gradients/loss/dense_188_loss/Mean_grad/Cast*
T0*+
_class!
loc:@loss/dense_188_loss/Mean*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ń
=training/Adam/gradients/loss/dense_188_loss/Square_grad/ConstConst>^training/Adam/gradients/loss/dense_188_loss/Mean_grad/truediv*
valueB
 *   @*-
_class#
!loc:@loss/dense_188_loss/Square*
dtype0*
_output_shapes
: 

;training/Adam/gradients/loss/dense_188_loss/Square_grad/MulMulloss/dense_188_loss/sub=training/Adam/gradients/loss/dense_188_loss/Square_grad/Const*
T0*-
_class#
!loc:@loss/dense_188_loss/Square*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş
=training/Adam/gradients/loss/dense_188_loss/Square_grad/Mul_1Mul=training/Adam/gradients/loss/dense_188_loss/Mean_grad/truediv;training/Adam/gradients/loss/dense_188_loss/Square_grad/Mul*
T0*-
_class#
!loc:@loss/dense_188_loss/Square*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ˇ
:training/Adam/gradients/loss/dense_188_loss/sub_grad/ShapeShapedense_188/BiasAdd*
T0*
out_type0**
_class 
loc:@loss/dense_188_loss/sub*
_output_shapes
:
¸
<training/Adam/gradients/loss/dense_188_loss/sub_grad/Shape_1Shapedense_188_target*
T0*
out_type0**
_class 
loc:@loss/dense_188_loss/sub*
_output_shapes
:
Ć
Jtraining/Adam/gradients/loss/dense_188_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_188_loss/sub_grad/Shape<training/Adam/gradients/loss/dense_188_loss/sub_grad/Shape_1*
T0**
_class 
loc:@loss/dense_188_loss/sub*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ś
8training/Adam/gradients/loss/dense_188_loss/sub_grad/SumSum=training/Adam/gradients/loss/dense_188_loss/Square_grad/Mul_1Jtraining/Adam/gradients/loss/dense_188_loss/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/dense_188_loss/sub*
_output_shapes
:
Š
<training/Adam/gradients/loss/dense_188_loss/sub_grad/ReshapeReshape8training/Adam/gradients/loss/dense_188_loss/sub_grad/Sum:training/Adam/gradients/loss/dense_188_loss/sub_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/dense_188_loss/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
:training/Adam/gradients/loss/dense_188_loss/sub_grad/Sum_1Sum=training/Adam/gradients/loss/dense_188_loss/Square_grad/Mul_1Ltraining/Adam/gradients/loss/dense_188_loss/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/dense_188_loss/sub*
_output_shapes
:
Ę
8training/Adam/gradients/loss/dense_188_loss/sub_grad/NegNeg:training/Adam/gradients/loss/dense_188_loss/sub_grad/Sum_1*
T0**
_class 
loc:@loss/dense_188_loss/sub*
_output_shapes
:
ś
>training/Adam/gradients/loss/dense_188_loss/sub_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_188_loss/sub_grad/Neg<training/Adam/gradients/loss/dense_188_loss/sub_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/dense_188_loss/sub*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
é
:training/Adam/gradients/dense_188/BiasAdd_grad/BiasAddGradBiasAddGrad<training/Adam/gradients/loss/dense_188_loss/sub_grad/Reshape*
T0*$
_class
loc:@dense_188/BiasAdd*
data_formatNHWC*
_output_shapes
:

4training/Adam/gradients/dense_188/MatMul_grad/MatMulMatMul<training/Adam/gradients/loss/dense_188_loss/sub_grad/Reshapedense_188/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_188/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙'*
transpose_a( 

6training/Adam/gradients/dense_188/MatMul_grad/MatMul_1MatMuldropout_94/Identity<training/Adam/gradients/loss/dense_188_loss/sub_grad/Reshape*
transpose_b( *
T0*#
_class
loc:@dense_188/MatMul*
_output_shapes
:	'*
transpose_a(
Ü
4training/Adam/gradients/dense_187/Relu_grad/ReluGradReluGrad4training/Adam/gradients/dense_188/MatMul_grad/MatMuldense_187/Relu*
T0*!
_class
loc:@dense_187/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙'
â
:training/Adam/gradients/dense_187/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/dense_187/Relu_grad/ReluGrad*
T0*$
_class
loc:@dense_187/BiasAdd*
data_formatNHWC*
_output_shapes	
:'

4training/Adam/gradients/dense_187/MatMul_grad/MatMulMatMul4training/Adam/gradients/dense_187/Relu_grad/ReluGraddense_187/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_187/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ü
6training/Adam/gradients/dense_187/MatMul_grad/MatMul_1MatMuldense_187_input4training/Adam/gradients/dense_187/Relu_grad/ReluGrad*
transpose_b( *
T0*#
_class
loc:@dense_187/MatMul*
_output_shapes
:	'*
transpose_a(
_
training/Adam/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ź
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
use_locking( *
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
p
training/Adam/CastCastAdam/iterations/read*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
X
training/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
T0*
_output_shapes
: 
t
#training/Adam/zeros/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*
T0*

index_type0*
_output_shapes
:	'

training/Adam/Variable
VariableV2*
shape:	'*
shared_name *
dtype0*
_output_shapes
:	'*
	container 
Ň
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes
:	'

training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*
_output_shapes
:	'
p
%training/Adam/zeros_1/shape_as_tensorConst*
valueB:'*
dtype0*
_output_shapes
:
`
training/Adam/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_1Fill%training/Adam/zeros_1/shape_as_tensortraining/Adam/zeros_1/Const*
T0*

index_type0*
_output_shapes	
:'

training/Adam/Variable_1
VariableV2*
shape:'*
shared_name *
dtype0*
_output_shapes	
:'*
	container 
Ö
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes	
:'

training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes	
:'
v
%training/Adam/zeros_2/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
T0*

index_type0*
_output_shapes
:	'

training/Adam/Variable_2
VariableV2*
shape:	'*
shared_name *
dtype0*
_output_shapes
:	'*
	container 
Ú
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	'

training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
:	'
b
training/Adam/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adam/Variable_3
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ő
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:

training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
T0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
:
v
%training/Adam/zeros_4/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*
_output_shapes
:	'

training/Adam/Variable_4
VariableV2*
shape:	'*
shared_name *
dtype0*
_output_shapes
:	'*
	container 
Ú
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes
:	'

training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
T0*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes
:	'
p
%training/Adam/zeros_5/shape_as_tensorConst*
valueB:'*
dtype0*
_output_shapes
:
`
training/Adam/zeros_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_5Fill%training/Adam/zeros_5/shape_as_tensortraining/Adam/zeros_5/Const*
T0*

index_type0*
_output_shapes	
:'

training/Adam/Variable_5
VariableV2*
shape:'*
shared_name *
dtype0*
_output_shapes	
:'*
	container 
Ö
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes	
:'

training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes	
:'
v
%training/Adam/zeros_6/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
T0*

index_type0*
_output_shapes
:	'

training/Adam/Variable_6
VariableV2*
shape:	'*
shared_name *
dtype0*
_output_shapes
:	'*
	container 
Ú
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
:	'

training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
T0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes
:	'
b
training/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adam/Variable_7
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ő
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:

training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
:
o
%training/Adam/zeros_8/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_8
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ő
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:

training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
:
o
%training/Adam/zeros_9/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_9
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ő
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:

training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
:
p
&training/Adam/zeros_10/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_10
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ů
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:

training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
T0*,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
:
p
&training/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_11
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ů
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:

training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
:
s
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes
:	'
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_2Multraining/Adam/sub_26training/Adam/gradients/dense_187/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	'
n
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes
:	'
u
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_4/read*
T0*
_output_shapes
:	'
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/SquareSquare6training/Adam/gradients/dense_187/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	'
o
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes
:	'
n
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes
:	'
l
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes
:	'
Z
training/Adam/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_3Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
T0*
_output_shapes
:	'

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
T0*
_output_shapes
:	'
e
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes
:	'
Z
training/Adam/add_3/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
q
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes
:	'
v
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes
:	'
t
training/Adam/sub_4Subdense_187/kernel/readtraining/Adam/truediv_1*
T0*
_output_shapes
:	'
É
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes
:	'
Ď
training/Adam/Assign_1Assigntraining/Adam/Variable_4training/Adam/add_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes
:	'
ż
training/Adam/Assign_2Assigndense_187/kerneltraining/Adam/sub_4*
use_locking(*
T0*#
_class
loc:@dense_187/kernel*
validate_shape(*
_output_shapes
:	'
q
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
T0*
_output_shapes	
:'
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_5:training/Adam/gradients/dense_187/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:'
j
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes	
:'
q
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_5/read*
T0*
_output_shapes	
:'
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_1Square:training/Adam/gradients/dense_187/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:'
m
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes	
:'
j
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes	
:'
i
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes	
:'
Z
training/Adam/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_5Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
T0*
_output_shapes	
:'

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
T0*
_output_shapes	
:'
a
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes	
:'
Z
training/Adam/add_6/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
m
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes	
:'
s
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes	
:'
n
training/Adam/sub_7Subdense_187/bias/readtraining/Adam/truediv_2*
T0*
_output_shapes	
:'
Ë
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes	
:'
Ë
training/Adam/Assign_4Assigntraining/Adam/Variable_5training/Adam/add_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes	
:'
ˇ
training/Adam/Assign_5Assigndense_187/biastraining/Adam/sub_7*
use_locking(*
T0*!
_class
loc:@dense_187/bias*
validate_shape(*
_output_shapes	
:'
v
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0*
_output_shapes
:	'
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_86training/Adam/gradients/dense_188/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	'
p
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes
:	'
v
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_6/read*
T0*
_output_shapes
:	'
Z
training/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_2Square6training/Adam/gradients/dense_188/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	'
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
:	'
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
:	'
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes
:	'
Z
training/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_7Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0*
_output_shapes
:	'

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*
_output_shapes
:	'
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:	'
Z
training/Adam/add_9/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
:	'
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes
:	'
u
training/Adam/sub_10Subdense_188/kernel/readtraining/Adam/truediv_3*
T0*
_output_shapes
:	'
Ď
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	'
Ď
training/Adam/Assign_7Assigntraining/Adam/Variable_6training/Adam/add_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
:	'
Ŕ
training/Adam/Assign_8Assigndense_188/kerneltraining/Adam/sub_10*
use_locking(*
T0*#
_class
loc:@dense_188/kernel*
validate_shape(*
_output_shapes
:	'
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes
:
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_17Multraining/Adam/sub_11:training/Adam/gradients/dense_188/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:
q
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_7/read*
T0*
_output_shapes
:
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square:training/Adam/gradients/dense_188/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:
Z
training/Adam/Const_8Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_9Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
T0*
_output_shapes
:

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes
:
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:
[
training/Adam/add_12/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
:
n
training/Adam/sub_13Subdense_188/bias/readtraining/Adam/truediv_4*
T0*
_output_shapes
:
Ë
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:
Ě
training/Adam/Assign_10Assigntraining/Adam/Variable_7training/Adam/add_11*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:
¸
training/Adam/Assign_11Assigndense_188/biastraining/Adam/sub_13*
use_locking(*
T0*!
_class
loc:@dense_188/bias*
validate_shape(*
_output_shapes
:

training/group_depsNoOp	^loss/mul"^metrics/mean_squared_error/Mean_1^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_2^training/Adam/Assign_3^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9

IsVariableInitialized_4IsVariableInitializedAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
z
IsVariableInitialized_5IsVariableInitializedAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

IsVariableInitialized_6IsVariableInitializedAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializedAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

IsVariableInitialized_8IsVariableInitialized
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedtraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializedtraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializedtraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes
: 

IsVariableInitialized_12IsVariableInitializedtraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
: 

IsVariableInitialized_13IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 

IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
: 

IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 

IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 

init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
N
Placeholder_4Placeholder*
shape: *
dtype0	*
_output_shapes
: 
 
Assign_4AssignAdam/iterationsPlaceholder_4*
use_locking( *
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: 
`
Placeholder_5Placeholder*
shape:	'*
dtype0*
_output_shapes
:	'
ˇ
Assign_5Assigntraining/Adam/VariablePlaceholder_5*
use_locking( *
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes
:	'
X
Placeholder_6Placeholder*
shape:'*
dtype0*
_output_shapes	
:'
ˇ
Assign_6Assigntraining/Adam/Variable_1Placeholder_6*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes	
:'
`
Placeholder_7Placeholder*
shape:	'*
dtype0*
_output_shapes
:	'
ť
Assign_7Assigntraining/Adam/Variable_2Placeholder_7*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	'
V
Placeholder_8Placeholder*
shape:*
dtype0*
_output_shapes
:
ś
Assign_8Assigntraining/Adam/Variable_3Placeholder_8*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:
`
Placeholder_9Placeholder*
shape:	'*
dtype0*
_output_shapes
:	'
ť
Assign_9Assigntraining/Adam/Variable_4Placeholder_9*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes
:	'
Y
Placeholder_10Placeholder*
shape:'*
dtype0*
_output_shapes	
:'
š
	Assign_10Assigntraining/Adam/Variable_5Placeholder_10*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes	
:'
a
Placeholder_11Placeholder*
shape:	'*
dtype0*
_output_shapes
:	'
˝
	Assign_11Assigntraining/Adam/Variable_6Placeholder_11*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
:	'
W
Placeholder_12Placeholder*
shape:*
dtype0*
_output_shapes
:
¸
	Assign_12Assigntraining/Adam/Variable_7Placeholder_12*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:
W
Placeholder_13Placeholder*
shape:*
dtype0*
_output_shapes
:
¸
	Assign_13Assigntraining/Adam/Variable_8Placeholder_13*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:
W
Placeholder_14Placeholder*
shape:*
dtype0*
_output_shapes
:
¸
	Assign_14Assigntraining/Adam/Variable_9Placeholder_14*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:
W
Placeholder_15Placeholder*
shape:*
dtype0*
_output_shapes
:
ş
	Assign_15Assigntraining/Adam/Variable_10Placeholder_15*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:
W
Placeholder_16Placeholder*
shape:*
dtype0*
_output_shapes
:
ş
	Assign_16Assigntraining/Adam/Variable_11Placeholder_16*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_9071bc6049b64fc39ea0d30ea8744b89/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
­
save/SaveV2/tensor_namesConst"/device:CPU:0*Ń
valueÇBÄBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBdense_187/biasBdense_187/kernelBdense_188/biasBdense_188/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ó
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1Adam/beta_2
Adam/decayAdam/iterationsAdam/lrdense_187/biasdense_187/kerneldense_188/biasdense_188/kerneltraining/Adam/Variabletraining/Adam/Variable_1training/Adam/Variable_10training/Adam/Variable_11training/Adam/Variable_2training/Adam/Variable_3training/Adam/Variable_4training/Adam/Variable_5training/Adam/Variable_6training/Adam/Variable_7training/Adam/Variable_8training/Adam/Variable_9"/device:CPU:0*#
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
°
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ń
valueÇBÄBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBdense_187/biasBdense_187/kernelBdense_188/biasBdense_188/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*#
dtypes
2	*h
_output_shapesV
T:::::::::::::::::::::

save/AssignAssignAdam/beta_1save/RestoreV2*
use_locking(*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: 
 
save/Assign_1AssignAdam/beta_2save/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: 

save/Assign_2Assign
Adam/decaysave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: 
¨
save/Assign_3AssignAdam/iterationssave/RestoreV2:3*
use_locking(*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: 

save/Assign_4AssignAdam/lrsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: 
Ť
save/Assign_5Assigndense_187/biassave/RestoreV2:5*
use_locking(*
T0*!
_class
loc:@dense_187/bias*
validate_shape(*
_output_shapes	
:'
ł
save/Assign_6Assigndense_187/kernelsave/RestoreV2:6*
use_locking(*
T0*#
_class
loc:@dense_187/kernel*
validate_shape(*
_output_shapes
:	'
Ş
save/Assign_7Assigndense_188/biassave/RestoreV2:7*
use_locking(*
T0*!
_class
loc:@dense_188/bias*
validate_shape(*
_output_shapes
:
ł
save/Assign_8Assigndense_188/kernelsave/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@dense_188/kernel*
validate_shape(*
_output_shapes
:	'
ż
save/Assign_9Assigntraining/Adam/Variablesave/RestoreV2:9*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes
:	'
Á
save/Assign_10Assigntraining/Adam/Variable_1save/RestoreV2:10*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes	
:'
Â
save/Assign_11Assigntraining/Adam/Variable_10save/RestoreV2:11*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:
Â
save/Assign_12Assigntraining/Adam/Variable_11save/RestoreV2:12*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:
Ĺ
save/Assign_13Assigntraining/Adam/Variable_2save/RestoreV2:13*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	'
Ŕ
save/Assign_14Assigntraining/Adam/Variable_3save/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:
Ĺ
save/Assign_15Assigntraining/Adam/Variable_4save/RestoreV2:15*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes
:	'
Á
save/Assign_16Assigntraining/Adam/Variable_5save/RestoreV2:16*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes	
:'
Ĺ
save/Assign_17Assigntraining/Adam/Variable_6save/RestoreV2:17*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
:	'
Ŕ
save/Assign_18Assigntraining/Adam/Variable_7save/RestoreV2:18*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:
Ŕ
save/Assign_19Assigntraining/Adam/Variable_8save/RestoreV2:19*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:
Ŕ
save/Assign_20Assigntraining/Adam/Variable_9save/RestoreV2:20*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:
ó
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"&<
save/Const:0save/Identity:0save/restore_all (5 @F8"
trainable_variablesőň
d
dense_187/kernel:0dense_187/kernel/Assigndense_187/kernel/read:02dense_187/random_uniform:08
U
dense_187/bias:0dense_187/bias/Assigndense_187/bias/read:02dense_187/Const:08
d
dense_188/kernel:0dense_188/kernel/Assigndense_188/kernel/read:02dense_188/random_uniform:08
U
dense_188/bias:0dense_188/bias/Assigndense_188/bias/read:02dense_188/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08"
	variablesőň
d
dense_187/kernel:0dense_187/kernel/Assigndense_187/kernel/read:02dense_187/random_uniform:08
U
dense_187/bias:0dense_187/bias/Assigndense_187/bias/read:02dense_187/Const:08
d
dense_188/kernel:0dense_188/kernel/Assigndense_188/kernel/read:02dense_188/random_uniform:08
U
dense_188/bias:0dense_188/bias/Assigndense_188/bias/read:02dense_188/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08*
konohana
2
inputs(
dense_187_input:0˙˙˙˙˙˙˙˙˙5
outputs*
dense_188/BiasAdd:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict