Ã
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
my_model/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_namemy_model/conv2d/kernel
?
*my_model/conv2d/kernel/Read/ReadVariableOpReadVariableOpmy_model/conv2d/kernel*&
_output_shapes
: *
dtype0
?
my_model/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_namemy_model/conv2d/bias
y
(my_model/conv2d/bias/Read/ReadVariableOpReadVariableOpmy_model/conv2d/bias*
_output_shapes
: *
dtype0
?
my_model/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*&
shared_namemy_model/dense/kernel
?
)my_model/dense/kernel/Read/ReadVariableOpReadVariableOpmy_model/dense/kernel*!
_output_shapes
:???*
dtype0

my_model/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namemy_model/dense/bias
x
'my_model/dense/bias/Read/ReadVariableOpReadVariableOpmy_model/dense/bias*
_output_shapes	
:?*
dtype0
?
my_model/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*(
shared_namemy_model/dense_1/kernel
?
+my_model/dense_1/kernel/Read/ReadVariableOpReadVariableOpmy_model/dense_1/kernel*
_output_shapes
:	?
*
dtype0
?
my_model/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_namemy_model/dense_1/bias
{
)my_model/dense_1/bias/Read/ReadVariableOpReadVariableOpmy_model/dense_1/bias*
_output_shapes
:
*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
	conv1
flatten
d1
d2
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
h


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*

0
1
2
3
4
5
*

0
1
2
3
4
5
 
?
	variables
 layer_regularization_losses
!non_trainable_variables
trainable_variables
regularization_losses
"layer_metrics
#metrics

$layers
 
SQ
VARIABLE_VALUEmy_model/conv2d/kernel'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEmy_model/conv2d/bias%conv1/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1


0
1
 
?
	variables
%layer_regularization_losses
&non_trainable_variables
trainable_variables
regularization_losses
'layer_metrics
(metrics

)layers
 
 
 
?
	variables
*layer_regularization_losses
+non_trainable_variables
trainable_variables
regularization_losses
,layer_metrics
-metrics

.layers
OM
VARIABLE_VALUEmy_model/dense/kernel$d1/kernel/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmy_model/dense/bias"d1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
/layer_regularization_losses
0non_trainable_variables
trainable_variables
regularization_losses
1layer_metrics
2metrics

3layers
QO
VARIABLE_VALUEmy_model/dense_1/kernel$d2/kernel/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEmy_model/dense_1/bias"d2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
4layer_regularization_losses
5non_trainable_variables
trainable_variables
regularization_losses
6layer_metrics
7metrics

8layers
 
 
 
 

0
1
2
3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1my_model/conv2d/kernelmy_model/conv2d/biasmy_model/dense/kernelmy_model/dense/biasmy_model/dense_1/kernelmy_model/dense_1/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_22921
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*my_model/conv2d/kernel/Read/ReadVariableOp(my_model/conv2d/bias/Read/ReadVariableOp)my_model/dense/kernel/Read/ReadVariableOp'my_model/dense/bias/Read/ReadVariableOp+my_model/dense_1/kernel/Read/ReadVariableOp)my_model/dense_1/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_23033
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemy_model/conv2d/kernelmy_model/conv2d/biasmy_model/dense/kernelmy_model/dense/biasmy_model/dense_1/kernelmy_model/dense_1/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_23061??
?
?
#__inference_signature_wrapper_22921
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_227842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
z
%__inference_dense_layer_call_fn_22972

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_228402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_22867

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_22840

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_22947

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????T  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
C
'__inference_flatten_layer_call_fn_22952

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_228212
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?%
?
 __inference__wrapped_model_22784
input_12
.my_model_conv2d_conv2d_readvariableop_resource3
/my_model_conv2d_biasadd_readvariableop_resource1
-my_model_dense_matmul_readvariableop_resource2
.my_model_dense_biasadd_readvariableop_resource3
/my_model_dense_1_matmul_readvariableop_resource4
0my_model_dense_1_biasadd_readvariableop_resource
identity??&my_model/conv2d/BiasAdd/ReadVariableOp?%my_model/conv2d/Conv2D/ReadVariableOp?%my_model/dense/BiasAdd/ReadVariableOp?$my_model/dense/MatMul/ReadVariableOp?'my_model/dense_1/BiasAdd/ReadVariableOp?&my_model/dense_1/MatMul/ReadVariableOp?
%my_model/conv2d/Conv2D/ReadVariableOpReadVariableOp.my_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02'
%my_model/conv2d/Conv2D/ReadVariableOp?
my_model/conv2d/Conv2DConv2Dinput_1-my_model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
my_model/conv2d/Conv2D?
&my_model/conv2d/BiasAdd/ReadVariableOpReadVariableOp/my_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02(
&my_model/conv2d/BiasAdd/ReadVariableOp?
my_model/conv2d/BiasAddBiasAddmy_model/conv2d/Conv2D:output:0.my_model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
my_model/conv2d/BiasAdd?
my_model/conv2d/ReluRelu my_model/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
my_model/conv2d/Relu?
my_model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????T  2
my_model/flatten/Const?
my_model/flatten/ReshapeReshape"my_model/conv2d/Relu:activations:0my_model/flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
my_model/flatten/Reshape?
$my_model/dense/MatMul/ReadVariableOpReadVariableOp-my_model_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02&
$my_model/dense/MatMul/ReadVariableOp?
my_model/dense/MatMulMatMul!my_model/flatten/Reshape:output:0,my_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
my_model/dense/MatMul?
%my_model/dense/BiasAdd/ReadVariableOpReadVariableOp.my_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%my_model/dense/BiasAdd/ReadVariableOp?
my_model/dense/BiasAddBiasAddmy_model/dense/MatMul:product:0-my_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
my_model/dense/BiasAdd?
my_model/dense/ReluRelumy_model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
my_model/dense/Relu?
&my_model/dense_1/MatMul/ReadVariableOpReadVariableOp/my_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02(
&my_model/dense_1/MatMul/ReadVariableOp?
my_model/dense_1/MatMulMatMul!my_model/dense/Relu:activations:0.my_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
my_model/dense_1/MatMul?
'my_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp0my_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'my_model/dense_1/BiasAdd/ReadVariableOp?
my_model/dense_1/BiasAddBiasAdd!my_model/dense_1/MatMul:product:0/my_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
my_model/dense_1/BiasAdd?
my_model/dense_1/SoftmaxSoftmax!my_model/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
my_model/dense_1/Softmax?
IdentityIdentity"my_model/dense_1/Softmax:softmax:0'^my_model/conv2d/BiasAdd/ReadVariableOp&^my_model/conv2d/Conv2D/ReadVariableOp&^my_model/dense/BiasAdd/ReadVariableOp%^my_model/dense/MatMul/ReadVariableOp(^my_model/dense_1/BiasAdd/ReadVariableOp'^my_model/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2P
&my_model/conv2d/BiasAdd/ReadVariableOp&my_model/conv2d/BiasAdd/ReadVariableOp2N
%my_model/conv2d/Conv2D/ReadVariableOp%my_model/conv2d/Conv2D/ReadVariableOp2N
%my_model/dense/BiasAdd/ReadVariableOp%my_model/dense/BiasAdd/ReadVariableOp2L
$my_model/dense/MatMul/ReadVariableOp$my_model/dense/MatMul/ReadVariableOp2R
'my_model/dense_1/BiasAdd/ReadVariableOp'my_model/dense_1/BiasAdd/ReadVariableOp2P
&my_model/dense_1/MatMul/ReadVariableOp&my_model/dense_1/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_22963

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
A__inference_conv2d_layer_call_and_return_conditional_losses_22932

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_22983

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
|
'__inference_dense_1_layer_call_fn_22992

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_228672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_my_model_layer_call_fn_22902
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_my_model_layer_call_and_return_conditional_losses_228842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
{
&__inference_conv2d_layer_call_fn_22941

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_227992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_my_model_layer_call_and_return_conditional_losses_22884
input_1
conv2d_22810
conv2d_22812
dense_22851
dense_22853
dense_1_22878
dense_1_22880
identity??conv2d/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_22810conv2d_22812*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_227992 
conv2d/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_228212
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_22851dense_22853*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_228402
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_22878dense_1_22880*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_228672!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
__inference__traced_save_23033
file_prefix5
1savev2_my_model_conv2d_kernel_read_readvariableop3
/savev2_my_model_conv2d_bias_read_readvariableop4
0savev2_my_model_dense_kernel_read_readvariableop2
.savev2_my_model_dense_bias_read_readvariableop6
2savev2_my_model_dense_1_kernel_read_readvariableop4
0savev2_my_model_dense_1_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB$d1/kernel/.ATTRIBUTES/VARIABLE_VALUEB"d1/bias/.ATTRIBUTES/VARIABLE_VALUEB$d2/kernel/.ATTRIBUTES/VARIABLE_VALUEB"d2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_my_model_conv2d_kernel_read_readvariableop/savev2_my_model_conv2d_bias_read_readvariableop0savev2_my_model_dense_kernel_read_readvariableop.savev2_my_model_dense_bias_read_readvariableop2savev2_my_model_dense_1_kernel_read_readvariableop0savev2_my_model_dense_1_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*T
_input_shapesC
A: : : :???:?:	?
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :'#
!
_output_shapes
:???:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: 
?
?
!__inference__traced_restore_23061
file_prefix+
'assignvariableop_my_model_conv2d_kernel+
'assignvariableop_1_my_model_conv2d_bias,
(assignvariableop_2_my_model_dense_kernel*
&assignvariableop_3_my_model_dense_bias.
*assignvariableop_4_my_model_dense_1_kernel,
(assignvariableop_5_my_model_dense_1_bias

identity_7??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB$d1/kernel/.ATTRIBUTES/VARIABLE_VALUEB"d1/bias/.ATTRIBUTES/VARIABLE_VALUEB$d2/kernel/.ATTRIBUTES/VARIABLE_VALUEB"d2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp'assignvariableop_my_model_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp'assignvariableop_1_my_model_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp(assignvariableop_2_my_model_dense_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp&assignvariableop_3_my_model_dense_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_my_model_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp(assignvariableop_5_my_model_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_6?

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes
: 2

Identity_7"!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
A__inference_conv2d_layer_call_and_return_conditional_losses_22799

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_22821

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????T  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????<
output_10
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:?a
?
	conv1
flatten
d1
d2
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
9_default_save_signature
:__call__
*;&call_and_return_all_conditional_losses"?
_tf_keras_model?{"class_name": "MyModel", "name": "my_model", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "MyModel"}}
?	


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
<__call__
*=&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 28, 28, 1]}}
?
	variables
trainable_variables
regularization_losses
	keras_api
>__call__
*?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
@__call__
*A&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 21632}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 21632]}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
B__call__
*C&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 128]}}
J

0
1
2
3
4
5"
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
 layer_regularization_losses
!non_trainable_variables
trainable_variables
regularization_losses
"layer_metrics
#metrics

$layers
:__call__
9_default_save_signature
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
,
Dserving_default"
signature_map
0:. 2my_model/conv2d/kernel
":  2my_model/conv2d/bias
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
%layer_regularization_losses
&non_trainable_variables
trainable_variables
regularization_losses
'layer_metrics
(metrics

)layers
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
*layer_regularization_losses
+non_trainable_variables
trainable_variables
regularization_losses
,layer_metrics
-metrics

.layers
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
*:(???2my_model/dense/kernel
": ?2my_model/dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
/layer_regularization_losses
0non_trainable_variables
trainable_variables
regularization_losses
1layer_metrics
2metrics

3layers
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
*:(	?
2my_model/dense_1/kernel
#:!
2my_model/dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
4layer_regularization_losses
5non_trainable_variables
trainable_variables
regularization_losses
6layer_metrics
7metrics

8layers
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
 __inference__wrapped_model_22784?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????
?2?
(__inference_my_model_layer_call_fn_22902?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????
?2?
C__inference_my_model_layer_call_and_return_conditional_losses_22884?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????
?2?
&__inference_conv2d_layer_call_fn_22941?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_conv2d_layer_call_and_return_conditional_losses_22932?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_flatten_layer_call_fn_22952?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_flatten_layer_call_and_return_conditional_losses_22947?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_22972?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_22963?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_22992?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_22983?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_22921input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_22784w
8?5
.?+
)?&
input_1?????????
? "3?0
.
output_1"?
output_1?????????
?
A__inference_conv2d_layer_call_and_return_conditional_losses_22932l
7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
&__inference_conv2d_layer_call_fn_22941_
7?4
-?*
(?%
inputs?????????
? " ?????????? ?
B__inference_dense_1_layer_call_and_return_conditional_losses_22983]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? {
'__inference_dense_1_layer_call_fn_22992P0?-
&?#
!?
inputs??????????
? "??????????
?
@__inference_dense_layer_call_and_return_conditional_losses_22963_1?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? {
%__inference_dense_layer_call_fn_22972R1?.
'?$
"?
inputs???????????
? "????????????
B__inference_flatten_layer_call_and_return_conditional_losses_22947b7?4
-?*
(?%
inputs????????? 
? "'?$
?
0???????????
? ?
'__inference_flatten_layer_call_fn_22952U7?4
-?*
(?%
inputs????????? 
? "?????????????
C__inference_my_model_layer_call_and_return_conditional_losses_22884i
8?5
.?+
)?&
input_1?????????
? "%?"
?
0?????????

? ?
(__inference_my_model_layer_call_fn_22902\
8?5
.?+
)?&
input_1?????????
? "??????????
?
#__inference_signature_wrapper_22921?
C?@
? 
9?6
4
input_1)?&
input_1?????????"3?0
.
output_1"?
output_1?????????
