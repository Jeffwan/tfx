кЂ)
МCC
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
И
AsString

input"T

output"
Ttype:
2		
"
	precisionintџџџџџџџџџ"

scientificbool( "
shortestbool( "
widthintџџџџџџџџџ"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW

BoostedTreesBucketize
float_values*num_features#
bucket_boundaries*num_features
buckets*num_features"
num_featuresint(
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
К
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
Щ
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ўџџџџџџџџ"
value_indexint(0ўџџџџџџџџ"+

vocab_sizeintџџџџџџџџџ(0џџџџџџџџџ"
	delimiterstring	
+
IsNan
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z



LogicalNot
x

y

#
	LogicalOr
x

y

z

w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
2
LookupTableSizeV2
table_handle
size	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
я
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
З
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	

SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
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
Р
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
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
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"eval*2.0.02v2.0.0-rc2-26-g64c3d388ќ'

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 

global_stepVarHandleOp*
_class
loc:@global_step*
dtype0	*
_output_shapes
: *
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
dtype0	*
_output_shapes
: 
o
input_example_tensorPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
U
ParseExample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_2Const*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_3Const*
_output_shapes
: *
valueB *
dtype0
W
ParseExample/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_6Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_7Const*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_8Const*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_9Const*
_output_shapes
: *
valueB *
dtype0
X
ParseExample/Const_10Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_11Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_12Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_13Const*
valueB	 *
dtype0	*
_output_shapes
: 
X
ParseExample/Const_14Const*
dtype0	*
_output_shapes
: *
valueB	 
X
ParseExample/Const_15Const*
valueB	 *
dtype0	*
_output_shapes
: 
X
ParseExample/Const_16Const*
valueB	 *
dtype0	*
_output_shapes
: 
X
ParseExample/Const_17Const*
valueB	 *
dtype0	*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
n
&ParseExample/ParseExample/dense_keys_0Const*
_output_shapes
: *
valueB Bcompany*
dtype0
{
&ParseExample/ParseExample/dense_keys_1Const*%
valueB Bdropoff_census_tract*
dtype0*
_output_shapes
: 
}
&ParseExample/ParseExample/dense_keys_2Const*'
valueB Bdropoff_community_area*
dtype0*
_output_shapes
: 
w
&ParseExample/ParseExample/dense_keys_3Const*!
valueB Bdropoff_latitude*
dtype0*
_output_shapes
: 
x
&ParseExample/ParseExample/dense_keys_4Const*
dtype0*
_output_shapes
: *"
valueB Bdropoff_longitude
k
&ParseExample/ParseExample/dense_keys_5Const*
valueB
 Bfare*
dtype0*
_output_shapes
: 
s
&ParseExample/ParseExample/dense_keys_6Const*
valueB Bpayment_type*
dtype0*
_output_shapes
: 
z
&ParseExample/ParseExample/dense_keys_7Const*
_output_shapes
: *$
valueB Bpickup_census_tract*
dtype0
|
&ParseExample/ParseExample/dense_keys_8Const*&
valueB Bpickup_community_area*
dtype0*
_output_shapes
: 
v
&ParseExample/ParseExample/dense_keys_9Const*
_output_shapes
: * 
valueB Bpickup_latitude*
dtype0
x
'ParseExample/ParseExample/dense_keys_10Const*!
valueB Bpickup_longitude*
dtype0*
_output_shapes
: 
l
'ParseExample/ParseExample/dense_keys_11Const*
valueB
 Btips*
dtype0*
_output_shapes
: 
r
'ParseExample/ParseExample/dense_keys_12Const*
valueB B
trip_miles*
dtype0*
_output_shapes
: 
t
'ParseExample/ParseExample/dense_keys_13Const*
_output_shapes
: *
valueB Btrip_seconds*
dtype0
v
'ParseExample/ParseExample/dense_keys_14Const*
valueB Btrip_start_day*
dtype0*
_output_shapes
: 
w
'ParseExample/ParseExample/dense_keys_15Const* 
valueB Btrip_start_hour*
dtype0*
_output_shapes
: 
x
'ParseExample/ParseExample/dense_keys_16Const*!
valueB Btrip_start_month*
dtype0*
_output_shapes
: 
|
'ParseExample/ParseExample/dense_keys_17Const*
_output_shapes
: *%
valueB Btrip_start_timestamp*
dtype0

ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3&ParseExample/ParseExample/dense_keys_4&ParseExample/ParseExample/dense_keys_5&ParseExample/ParseExample/dense_keys_6&ParseExample/ParseExample/dense_keys_7&ParseExample/ParseExample/dense_keys_8&ParseExample/ParseExample/dense_keys_9'ParseExample/ParseExample/dense_keys_10'ParseExample/ParseExample/dense_keys_11'ParseExample/ParseExample/dense_keys_12'ParseExample/ParseExample/dense_keys_13'ParseExample/ParseExample/dense_keys_14'ParseExample/ParseExample/dense_keys_15'ParseExample/ParseExample/dense_keys_16'ParseExample/ParseExample/dense_keys_17ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4ParseExample/Const_5ParseExample/Const_6ParseExample/Const_7ParseExample/Const_8ParseExample/Const_9ParseExample/Const_10ParseExample/Const_11ParseExample/Const_12ParseExample/Const_13ParseExample/Const_14ParseExample/Const_15ParseExample/Const_16ParseExample/Const_17* 
Tdense
2									*
Ndense*ь
_output_shapesй
ж:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
Nsparse *~
dense_shapesn
l::::::::::::::::::*
sparse_types
 
х
ConstConst*
dtype0*
_output_shapes
: *Џ
valueЅBЂ Bgs://sina-dev/output/tfx/chicago_taxi_pipeline_kubeflow_gcp/Transform/transform_output/33/transform_fn/assets/vocab_compute_and_apply_vocabulary_vocabulary
щ
Const_1Const*Б
valueЇBЄ Bgs://sina-dev/output/tfx/chicago_taxi_pipeline_kubeflow_gcp/Transform/transform_output/33/transform_fn/assets/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 
|
transform/ConstConst*
dtype0*
_output_shapes
:	*9
value0B.	"$U'BЛx'B#'BN'BЇ'Bж'BВ'BЪ'BMп'B
V
transform/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *{?@

transform/Const_2Const*=
value4B2
"(hrЏТ`ЏТWЏТ.RЏТYNЏТМJЏТFЏТїCЏТ@ЏТѓ=ЏТ*
dtype0*
_output_shapes
:

V
transform/Const_3Const*
valueB
 *ІўFA*
dtype0*
_output_shapes
: 
V
transform/Const_4Const*
valueB
 *ЬTУA*
dtype0*
_output_shapes
: 
V
transform/Const_5Const*
valueB
 *^XC*
dtype0*
_output_shapes
: 
V
transform/Const_6Const*
valueB
 *џyDD*
dtype0*
_output_shapes
: 
~
transform/Const_7Const*9
value0B.	"$)W'Bw'B#'BN'Bю'B1'BеА'BЩ'BMп'B*
dtype0*
_output_shapes
:	
V
transform/Const_8Const*
dtype0*
_output_shapes
: *
valueB
 *ЪЭJ
ј
transform/Const_9Const*Ж
valueЌBЉ BЂgs://sina-dev/output/tfx/chicago_taxi_pipeline_kubeflow_gcp/Transform/transform_output/33/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary*
dtype0*
_output_shapes
: 
ћ
transform/Const_10Const*И
valueЎBЋ BЄgs://sina-dev/output/tfx/chicago_taxi_pipeline_kubeflow_gcp/Transform/transform_output/33/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 

transform/Const_11Const*=
value4B2
"(]oЏТuYЏТRЏТкNЏТLЏТЯHЏТDЏТїCЏТ@ЏТѓ=ЏТ*
dtype0*
_output_shapes
:


"transform/transform/inputs/companyPlaceholder*
shape:џџџџџџџџџ*
dtype0*'
_output_shapes
:џџџџџџџџџ

1transform/transform/inputs/F_dropoff_census_tractPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

3transform/transform/inputs/F_dropoff_community_areaPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

-transform/transform/inputs/F_dropoff_latitudePlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

.transform/transform/inputs/F_dropoff_longitudePlaceholder*
shape:џџџџџџџџџ*
dtype0*'
_output_shapes
:џџџџџџџџџ

transform/transform/inputs/farePlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

)transform/transform/inputs/F_payment_typePlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

0transform/transform/inputs/F_pickup_census_tractPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

2transform/transform/inputs/F_pickup_community_areaPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

,transform/transform/inputs/F_pickup_latitudePlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

-transform/transform/inputs/F_pickup_longitudePlaceholder*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0

transform/transform/inputs/tipsPlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

'transform/transform/inputs/F_trip_milesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0

)transform/transform/inputs/F_trip_secondsPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

+transform/transform/inputs/F_trip_start_dayPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

,transform/transform/inputs/F_trip_start_hourPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

-transform/transform/inputs/F_trip_start_monthPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

1transform/transform/inputs/F_trip_start_timestampPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

.transform/transform/inputs/inputs/company_copyIdentityParseExample/ParseExample*
T0*'
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/F_dropoff_census_tract_copyIdentityParseExample/ParseExample:1*
T0	*'
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/F_dropoff_community_area_copyIdentityParseExample/ParseExample:2*'
_output_shapes
:џџџџџџџџџ*
T0	

9transform/transform/inputs/inputs/F_dropoff_latitude_copyIdentityParseExample/ParseExample:3*
T0*'
_output_shapes
:џџџџџџџџџ

:transform/transform/inputs/inputs/F_dropoff_longitude_copyIdentityParseExample/ParseExample:4*
T0*'
_output_shapes
:џџџџџџџџџ

+transform/transform/inputs/inputs/fare_copyIdentityParseExample/ParseExample:5*
T0*'
_output_shapes
:џџџџџџџџџ

5transform/transform/inputs/inputs/F_payment_type_copyIdentityParseExample/ParseExample:6*
T0*'
_output_shapes
:џџџџџџџџџ

<transform/transform/inputs/inputs/F_pickup_census_tract_copyIdentityParseExample/ParseExample:7*
T0	*'
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/F_pickup_community_area_copyIdentityParseExample/ParseExample:8*
T0	*'
_output_shapes
:џџџџџџџџџ

8transform/transform/inputs/inputs/F_pickup_latitude_copyIdentityParseExample/ParseExample:9*'
_output_shapes
:џџџџџџџџџ*
T0

9transform/transform/inputs/inputs/F_pickup_longitude_copyIdentityParseExample/ParseExample:10*
T0*'
_output_shapes
:џџџџџџџџџ

+transform/transform/inputs/inputs/tips_copyIdentityParseExample/ParseExample:11*
T0*'
_output_shapes
:џџџџџџџџџ

3transform/transform/inputs/inputs/F_trip_miles_copyIdentityParseExample/ParseExample:12*'
_output_shapes
:џџџџџџџџџ*
T0

5transform/transform/inputs/inputs/F_trip_seconds_copyIdentityParseExample/ParseExample:13*
T0	*'
_output_shapes
:џџџџџџџџџ

7transform/transform/inputs/inputs/F_trip_start_day_copyIdentityParseExample/ParseExample:14*
T0	*'
_output_shapes
:џџџџџџџџџ

8transform/transform/inputs/inputs/F_trip_start_hour_copyIdentityParseExample/ParseExample:15*
T0	*'
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/inputs/F_trip_start_month_copyIdentityParseExample/ParseExample:16*'
_output_shapes
:џџџџџџџџџ*
T0	

=transform/transform/inputs/inputs/F_trip_start_timestamp_copyIdentityParseExample/ParseExample:17*
T0	*'
_output_shapes
:џџџџџџџџџ
­
Otransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SizeSize3transform/transform/inputs/inputs/F_trip_miles_copy*
T0*
_output_shapes
: 
и
Otransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/CastCastOtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Size*

SrcT0*
_output_shapes
: *

DstT0
Ё
Ptransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
§
Ntransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SumSum3transform/transform/inputs/inputs/F_trip_miles_copyPtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const*
T0*
_output_shapes
: 

Rtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truedivRealDivNtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SumOtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Cast*
_output_shapes
: *
T0

Ntransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/subSub3transform/transform/inputs/inputs/F_trip_miles_copyRtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truediv*'
_output_shapes
:џџџџџџџџџ*
T0
н
Qtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SquareSquareNtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/sub*'
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
Rtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:

Ptransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Sum_1SumQtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SquareRtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const_1*
T0*
_output_shapes
: 
Ѓ
Ttransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivPtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Sum_1Otransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Cast*
_output_shapes
: *
T0

Ptransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Vtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Xtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
Т
Atransform/transform/scale_to_z_score/scale_to_z_score_per_key/subSub3transform/transform/inputs/inputs/F_trip_miles_copytransform/Const_1*
T0*'
_output_shapes
:џџџџџџџџџ
~
Btransform/transform/scale_to_z_score/scale_to_z_score_per_key/SqrtSqrttransform/Const_4*
T0*
_output_shapes
: 

Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Ftransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqualNotEqualBtransform/transform/scale_to_z_score/scale_to_z_score_per_key/SqrtHtransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: 
Ъ
Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/zeros_like	ZerosLikeAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/sub*'
_output_shapes
:џџџџџџџџџ*
T0
Т
Btransform/transform/scale_to_z_score/scale_to_z_score_per_key/CastCastFtransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual*

SrcT0
*
_output_shapes
: *

DstT0

Atransform/transform/scale_to_z_score/scale_to_z_score_per_key/addAddV2Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/zeros_likeBtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
а
Dtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Cast_1CastAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/add*'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0

Etransform/transform/scale_to_z_score/scale_to_z_score_per_key/truedivRealDivAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/subBtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Sqrt*'
_output_shapes
:џџџџџџџџџ*
T0
д
Ftransform/transform/scale_to_z_score/scale_to_z_score_per_key/SelectV2SelectV2Dtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Cast_1Etransform/transform/scale_to_z_score/scale_to_z_score_per_key/truedivAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
Qtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SizeSize+transform/transform/inputs/inputs/fare_copy*
_output_shapes
: *
T0
м
Qtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/CastCastQtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Size*

SrcT0*
_output_shapes
: *

DstT0
Ѓ
Rtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
љ
Ptransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SumSum+transform/transform/inputs/inputs/fare_copyRtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const*
_output_shapes
: *
T0
Ѕ
Ttransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truedivRealDivPtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SumQtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 

Ptransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/subSub+transform/transform/inputs/inputs/fare_copyTtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truediv*
T0*'
_output_shapes
:џџџџџџџџџ
с
Stransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SquareSquarePtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/sub*'
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
Ttransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ѕ
Rtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Sum_1SumStransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SquareTtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const_1*
T0*
_output_shapes
: 
Љ
Vtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivRtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Sum_1Qtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 

Rtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Xtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

Ztransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
М
Ctransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/subSub+transform/transform/inputs/inputs/fare_copytransform/Const_3*
T0*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SqrtSqrttransform/Const_5*
_output_shapes
: *
T0

Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual/yConst*
_output_shapes
: *
valueB
 *    *
dtype0

Htransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqualNotEqualDtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SqrtJtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: 
Ю
Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/zeros_like	ZerosLikeCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
Dtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/CastCastHtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual*

SrcT0
*
_output_shapes
: *

DstT0

Ctransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/addAddV2Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/zeros_likeDtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
д
Ftransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast_1CastCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/add*

SrcT0*'
_output_shapes
:џџџџџџџџџ*

DstT0


Gtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/truedivRealDivCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/subDtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Sqrt*
T0*'
_output_shapes
:џџџџџџџџџ
м
Htransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectV2SelectV2Ftransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast_1Gtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/truedivCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:џџџџџџџџџ
б
Qtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastCast5transform/transform/inputs/inputs/F_trip_seconds_copy*

SrcT0	*'
_output_shapes
:џџџџџџџџџ*

DstT0
Э
Qtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SizeSizeQtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 
о
Stransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast_1CastQtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Size*
_output_shapes
: *

DstT0*

SrcT0
Ѓ
Rtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

Ptransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SumSumQtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastRtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const*
_output_shapes
: *
T0
Ї
Ttransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truedivRealDivPtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SumStransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast_1*
_output_shapes
: *
T0
В
Ptransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/subSubQtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastTtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truediv*
T0*'
_output_shapes
:џџџџџџџџџ
с
Stransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SquareSquarePtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
Ttransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ѕ
Rtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Sum_1SumStransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SquareTtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const_1*
_output_shapes
: *
T0
Ћ
Vtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivRtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Sum_1Stransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast_1*
T0*
_output_shapes
: 

Rtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Xtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

Ztransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
Ф
Dtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/CastCast5transform/transform/inputs/inputs/F_trip_seconds_copy*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
е
Ctransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/subSubDtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Casttransform/Const_6*
T0*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SqrtSqrttransform/Const_8*
_output_shapes
: *
T0

Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Htransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqualNotEqualDtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SqrtJtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: 
Ю
Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/zeros_like	ZerosLikeCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
Ftransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_1CastHtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual*
_output_shapes
: *

DstT0*

SrcT0


Ctransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/addAddV2Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/zeros_likeFtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_1*
T0*'
_output_shapes
:џџџџџџџџџ
д
Ftransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_2CastCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/add*'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0

Gtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/truedivRealDivCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/subDtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Sqrt*'
_output_shapes
:џџџџџџџџџ*
T0
м
Htransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectV2SelectV2Ftransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_2Gtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/truedivCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:џџџџџџџџџ

Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ў
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshape5transform/transform/inputs/inputs/F_payment_type_copyItransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0

Gtransform/transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
_output_shapes
: *
valueB	 R
џџџџџџџџџ*
dtype0	

Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
value_dtype0	*
	key_dtype0*
_output_shapes
: 

itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst*
value_indexџџџџџџџџџ*
	key_indexўџџџџџџџџ
ф
ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 

Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
value	B	 R
*
dtype0	
О
Ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
ч
Ztransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFast5transform/transform/inputs/inputs/F_payment_type_copy*
num_buckets
*'
_output_shapes
:џџџџџџџџџ

rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table5transform/transform/inputs/inputs/F_payment_type_copyBtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*'
_output_shapes
:џџџџџџџџџ*	
Tin0*

Tout0	
ц
ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
й
Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddZtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*'
_output_shapes
:џџџџџџџџџ
Э
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Btransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*'
_output_shapes
:џџџџџџџџџ*
T0	
Ж
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*
T0	*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ў
@transform/transform/compute_and_apply_vocabulary/apply_vocab/subSubPtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addBtransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
_output_shapes
: *
T0	

Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ћ
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshape.transform/transform/inputs/inputs/company_copyKtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*#
_output_shapes
:џџџџџџџџџ

Itransform/transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 

Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0*
_output_shapes
: *{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1

ktransform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableConst_1*
value_indexџџџџџџџџџ*
	key_indexўџџџџџџџџ
ш
ptransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 

Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/yConst*
dtype0	*
_output_shapes
: *
value	B	 R

Ф
Rtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addAddV2ptransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
т
\transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFast.transform/transform/inputs/inputs/company_copy*'
_output_shapes
:џџџџџџџџџ*
num_buckets


ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table.transform/transform/inputs/inputs/company_copyDtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const*'
_output_shapes
:џџџџџџџџџ*	
Tin0*

Tout0	
ъ
rtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
п
Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/AddAdd\transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketrtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*'
_output_shapes
:џџџџџџџџџ*
T0	
г
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualNotEqualttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const*
T0	*'
_output_shapes
:џџџџџџџџџ
О
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2SelectV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/Add*
T0	*'
_output_shapes
:џџџџџџџџџ

Ftransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary_1/apply_vocab/subSubRtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addDtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
_output_shapes
: *
T0	

3transform/transform/bucketize/quantiles/PlaceholderPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
|
1transform/transform/bucketize/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
o
0transform/transform/bucketize/quantiles/sort/NegNegtransform/Const_7*
T0*
_output_shapes
:	

2transform/transform/bucketize/quantiles/sort/ShapeShape0transform/transform/bucketize/quantiles/sort/Neg*
_output_shapes
:*
T0

@transform/transform/bucketize/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

:transform/transform/bucketize/quantiles/sort/strided_sliceStridedSlice2transform/transform/bucketize/quantiles/sort/Shape@transform/transform/bucketize/quantiles/sort/strided_slice/stackBtransform/transform/bucketize/quantiles/sort/strided_slice/stack_1Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
s
1transform/transform/bucketize/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
ж
3transform/transform/bucketize/quantiles/sort/TopKV2TopKV20transform/transform/bucketize/quantiles/sort/Neg:transform/transform/bucketize/quantiles/sort/strided_slice* 
_output_shapes
:	:	*
T0

2transform/transform/bucketize/quantiles/sort/Neg_1Neg3transform/transform/bucketize/quantiles/sort/TopKV2*
T0*
_output_shapes
:	
x
6transform/transform/bucketize/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
е
2transform/transform/bucketize/quantiles/ExpandDims
ExpandDims2transform/transform/bucketize/quantiles/sort/Neg_16transform/transform/bucketize/quantiles/ExpandDims/dim*
T0*
_output_shapes

:	
~
3transform/transform/bucketize/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

2transform/transform/bucketize/quantiles/sort_1/NegNeg2transform/transform/bucketize/quantiles/ExpandDims*
T0*
_output_shapes

:	

4transform/transform/bucketize/quantiles/sort_1/ShapeShape2transform/transform/bucketize/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Btransform/transform/bucketize/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<transform/transform/bucketize/quantiles/sort_1/strided_sliceStridedSlice4transform/transform/bucketize/quantiles/sort_1/ShapeBtransform/transform/bucketize/quantiles/sort_1/strided_slice/stackDtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_1Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
u
3transform/transform/bucketize/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
ф
5transform/transform/bucketize/quantiles/sort_1/TopKV2TopKV22transform/transform/bucketize/quantiles/sort_1/Neg<transform/transform/bucketize/quantiles/sort_1/strided_slice*(
_output_shapes
:	:	*
T0

4transform/transform/bucketize/quantiles/sort_1/Neg_1Neg5transform/transform/bucketize/quantiles/sort_1/TopKV2*
_output_shapes

:	*
T0
p
.transform/transform/bucketize/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

/transform/transform/bucketize/assert_rank/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
`
Xtransform/transform/bucketize/assert_rank/assert_type/statically_determined_correct_typeNoOp
Q
Itransform/transform/bucketize/assert_rank/static_checks_determined_all_okNoOp
ж
Mtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/unstackUnpack8transform/transform/inputs/inputs/F_pickup_latitude_copy*	
num*
T0*

axis*#
_output_shapes
:џџџџџџџџџ
О
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
В
htransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
Д
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Д
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ж
btransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapehtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackjtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
ѕ
Ytransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastbtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
О
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:	
Ж
ctransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
г
^transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negctransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:	
о
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegMtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:џџџџџџџџџ*
T0
Є
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
И
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
_output_shapes
: *
T0
і
ftransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackXtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*
N*
_output_shapes
:

dtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packftransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
_output_shapes

:*
T0*
N
Ћ
`transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
С
[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2^transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2dtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1`transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
T0*
N*
_output_shapes

:

о
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegMtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:џџџџџџџџџ*
T0
ѓ
\transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*	
num*
T0*
_output_shapes
:

і
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2\transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castjtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0	
Х
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubYtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*#
_output_shapes
:џџџџџџџџџ*
T0	
ю
Qtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/aPackXtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*
N*'
_output_shapes
:џџџџџџџџџ
Ѕ
Ttransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
З
Otransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose	TransposeQtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/aTtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/perm*
T0	*'
_output_shapes
:џџџџџџџџџ
s
1transform/transform/bucketize/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

1transform/transform/bucketize/apply_buckets/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

?transform/transform/bucketize/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

9transform/transform/bucketize/apply_buckets/strided_sliceStridedSlice1transform/transform/bucketize/apply_buckets/Shape?transform/transform/bucketize/apply_buckets/strided_slice/stackAtransform/transform/bucketize/apply_buckets/strided_slice/stack_1Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

5transform/transform/bucketize_1/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
~
3transform/transform/bucketize_1/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
r
2transform/transform/bucketize_1/quantiles/sort/NegNegtransform/Const_11*
T0*
_output_shapes
:


4transform/transform/bucketize_1/quantiles/sort/ShapeShape2transform/transform/bucketize_1/quantiles/sort/Neg*
_output_shapes
:*
T0

Btransform/transform/bucketize_1/quantiles/sort/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

<transform/transform/bucketize_1/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_1/quantiles/sort/ShapeBtransform/transform/bucketize_1/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
u
3transform/transform/bucketize_1/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
м
5transform/transform/bucketize_1/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_1/quantiles/sort/Neg<transform/transform/bucketize_1/quantiles/sort/strided_slice*
T0* 
_output_shapes
:
:


4transform/transform/bucketize_1/quantiles/sort/Neg_1Neg5transform/transform/bucketize_1/quantiles/sort/TopKV2*
T0*
_output_shapes
:

z
8transform/transform/bucketize_1/quantiles/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
л
4transform/transform/bucketize_1/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_1/quantiles/sort/Neg_18transform/transform/bucketize_1/quantiles/ExpandDims/dim*
T0*
_output_shapes

:


5transform/transform/bucketize_1/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

4transform/transform/bucketize_1/quantiles/sort_1/NegNeg4transform/transform/bucketize_1/quantiles/ExpandDims*
_output_shapes

:
*
T0

6transform/transform/bucketize_1/quantiles/sort_1/ShapeShape4transform/transform/bucketize_1/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Dtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ђ
>transform/transform/bucketize_1/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_1/quantiles/sort_1/ShapeDtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
w
5transform/transform/bucketize_1/quantiles/sort_1/RankConst*
_output_shapes
: *
value	B :*
dtype0
ъ
7transform/transform/bucketize_1/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_1/quantiles/sort_1/Neg>transform/transform/bucketize_1/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:
:


6transform/transform/bucketize_1/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_1/quantiles/sort_1/TopKV2*
_output_shapes

:
*
T0
r
0transform/transform/bucketize_1/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

1transform/transform/bucketize_1/assert_rank/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
b
Ztransform/transform/bucketize_1/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_1/assert_rank/static_checks_determined_all_okNoOp
й
Otransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/unstackUnpack9transform/transform/inputs/inputs/F_pickup_longitude_copy*

axis*#
_output_shapes
:џџџџџџџџџ*	
num*
T0
Т
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
Д
jtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
Ж
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Ж
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
dtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
љ
[transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
Т
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
_output_shapes

:
*
T0
И
etransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
й
`transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:

т
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegOtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:џџџџџџџџџ
І
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
valueB: *
dtype0
О
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
њ
htransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
_output_shapes
:*
T0

ftransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*
N*
_output_shapes

:
­
btransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Щ
]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
_output_shapes

:*
T0*
N
т
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegOtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:џџџџџџџџџ
ї
^transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
_output_shapes
:*	
num*
T0
ќ
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
Ы
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
ђ
Stransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/aPackZtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*
N*'
_output_shapes
:џџџџџџџџџ
Ї
Vtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       
Н
Qtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose	TransposeStransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/aVtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/perm*
T0	*'
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_1/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_1/apply_buckets/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

Atransform/transform/bucketize_1/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

;transform/transform/bucketize_1/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_1/apply_buckets/ShapeAtransform/transform/bucketize_1/apply_buckets/strided_slice/stackCtransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0

5transform/transform/bucketize_2/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
~
3transform/transform/bucketize_2/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
o
2transform/transform/bucketize_2/quantiles/sort/NegNegtransform/Const*
_output_shapes
:	*
T0

4transform/transform/bucketize_2/quantiles/sort/ShapeShape2transform/transform/bucketize_2/quantiles/sort/Neg*
T0*
_output_shapes
:

Btransform/transform/bucketize_2/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<transform/transform/bucketize_2/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_2/quantiles/sort/ShapeBtransform/transform/bucketize_2/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
u
3transform/transform/bucketize_2/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
м
5transform/transform/bucketize_2/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_2/quantiles/sort/Neg<transform/transform/bucketize_2/quantiles/sort/strided_slice* 
_output_shapes
:	:	*
T0

4transform/transform/bucketize_2/quantiles/sort/Neg_1Neg5transform/transform/bucketize_2/quantiles/sort/TopKV2*
T0*
_output_shapes
:	
z
8transform/transform/bucketize_2/quantiles/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
л
4transform/transform/bucketize_2/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_2/quantiles/sort/Neg_18transform/transform/bucketize_2/quantiles/ExpandDims/dim*
T0*
_output_shapes

:	

5transform/transform/bucketize_2/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

4transform/transform/bucketize_2/quantiles/sort_1/NegNeg4transform/transform/bucketize_2/quantiles/ExpandDims*
T0*
_output_shapes

:	

6transform/transform/bucketize_2/quantiles/sort_1/ShapeShape4transform/transform/bucketize_2/quantiles/sort_1/Neg*
_output_shapes
:*
T0

Dtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
>transform/transform/bucketize_2/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_2/quantiles/sort_1/ShapeDtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
w
5transform/transform/bucketize_2/quantiles/sort_1/RankConst*
dtype0*
_output_shapes
: *
value	B :
ъ
7transform/transform/bucketize_2/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_2/quantiles/sort_1/Neg>transform/transform/bucketize_2/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:	:	

6transform/transform/bucketize_2/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_2/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:	
r
0transform/transform/bucketize_2/assert_rank/rankConst*
_output_shapes
: *
value	B :*
dtype0

1transform/transform/bucketize_2/assert_rank/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0
b
Ztransform/transform/bucketize_2/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_2/assert_rank/static_checks_determined_all_okNoOp
й
Otransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/unstackUnpack9transform/transform/inputs/inputs/F_dropoff_latitude_copy*	
num*
T0*

axis*#
_output_shapes
:џџџџџџџџџ
Т
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
Д
jtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
Ж
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ж
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
dtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
љ
[transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
Т
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:	
И
etransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
й
`transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
_output_shapes

:	*
T0
т
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegOtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:џџџџџџџџџ*
T0
І
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
О
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
њ
htransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
_output_shapes
:*
T0

ftransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*
N*
_output_shapes

:
­
btransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
T0*
N*
_output_shapes

:

т
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegOtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:џџџџџџџџџ*
T0
ї
^transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*	
num*
T0*
_output_shapes
:

ќ
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
Ы
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
ђ
Stransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/aPackZtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*
N*'
_output_shapes
:џџџџџџџџџ
Ї
Vtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
_output_shapes
:*
valueB"       *
dtype0
Н
Qtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose	TransposeStransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/aVtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/perm*
T0	*'
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_2/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_2/apply_buckets/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0

Atransform/transform/bucketize_2/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

;transform/transform/bucketize_2/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_2/apply_buckets/ShapeAtransform/transform/bucketize_2/apply_buckets/strided_slice/stackCtransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0

5transform/transform/bucketize_3/quantiles/PlaceholderPlaceholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0
~
3transform/transform/bucketize_3/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
q
2transform/transform/bucketize_3/quantiles/sort/NegNegtransform/Const_2*
T0*
_output_shapes
:


4transform/transform/bucketize_3/quantiles/sort/ShapeShape2transform/transform/bucketize_3/quantiles/sort/Neg*
_output_shapes
:*
T0

Btransform/transform/bucketize_3/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<transform/transform/bucketize_3/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_3/quantiles/sort/ShapeBtransform/transform/bucketize_3/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
u
3transform/transform/bucketize_3/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
м
5transform/transform/bucketize_3/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_3/quantiles/sort/Neg<transform/transform/bucketize_3/quantiles/sort/strided_slice*
T0* 
_output_shapes
:
:


4transform/transform/bucketize_3/quantiles/sort/Neg_1Neg5transform/transform/bucketize_3/quantiles/sort/TopKV2*
T0*
_output_shapes
:

z
8transform/transform/bucketize_3/quantiles/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
л
4transform/transform/bucketize_3/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_3/quantiles/sort/Neg_18transform/transform/bucketize_3/quantiles/ExpandDims/dim*
T0*
_output_shapes

:


5transform/transform/bucketize_3/quantiles/sort_1/axisConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

4transform/transform/bucketize_3/quantiles/sort_1/NegNeg4transform/transform/bucketize_3/quantiles/ExpandDims*
T0*
_output_shapes

:


6transform/transform/bucketize_3/quantiles/sort_1/ShapeShape4transform/transform/bucketize_3/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Dtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
>transform/transform/bucketize_3/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_3/quantiles/sort_1/ShapeDtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
w
5transform/transform/bucketize_3/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
ъ
7transform/transform/bucketize_3/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_3/quantiles/sort_1/Neg>transform/transform/bucketize_3/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:
:


6transform/transform/bucketize_3/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_3/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:

r
0transform/transform/bucketize_3/assert_rank/rankConst*
dtype0*
_output_shapes
: *
value	B :

1transform/transform/bucketize_3/assert_rank/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0
b
Ztransform/transform/bucketize_3/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_3/assert_rank/static_checks_determined_all_okNoOp
к
Otransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/unstackUnpack:transform/transform/inputs/inputs/F_dropoff_longitude_copy*

axis*#
_output_shapes
:џџџџџџџџџ*	
num*
T0
Т
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0
Д
jtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ж
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ж
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
dtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
љ
[transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*
_output_shapes
: *

DstT0	*

SrcT0
Т
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
_output_shapes

:
*
T0
И
etransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
й
`transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:

т
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegOtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:џџџџџџџџџ
І
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
О
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
њ
htransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*
N*
_output_shapes
:

ftransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*
N*
_output_shapes

:
­
btransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
T0*
N*
_output_shapes

:
т
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegOtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:џџџџџџџџџ
ї
^transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*	
num*
T0*
_output_shapes
:
ќ
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
Ы
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
ђ
Stransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/aPackZtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*
N*'
_output_shapes
:џџџџџџџџџ
Ї
Vtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Н
Qtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose	TransposeStransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/aVtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/perm*
T0	*'
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_3/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_3/apply_buckets/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

Atransform/transform/bucketize_3/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

;transform/transform/bucketize_3/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_3/apply_buckets/ShapeAtransform/transform/bucketize_3/apply_buckets/strided_slice/stackCtransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0

transform/transform/IsNanIsNan+transform/transform/inputs/inputs/fare_copy*'
_output_shapes
:џџџџџџџџџ*
T0

transform/transform/zeros_like	ZerosLike+transform/transform/inputs/inputs/fare_copy*'
_output_shapes
:џџџџџџџџџ*
T0

transform/transform/CastCasttransform/transform/zeros_like*

SrcT0*'
_output_shapes
:џџџџџџџџџ*

DstT0	
^
transform/transform/ConstConst*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 

transform/transform/MulMul+transform/transform/inputs/inputs/fare_copytransform/transform/Const*'
_output_shapes
:џџџџџџџџџ*
T0

transform/transform/GreaterGreater+transform/transform/inputs/inputs/tips_copytransform/transform/Mul*'
_output_shapes
:џџџџџџџџџ*
T0

transform/transform/Cast_1Casttransform/transform/Greater*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0	
Ї
transform/transform/SelectSelecttransform/transform/IsNantransform/transform/Casttransform/transform/Cast_1*
T0	*'
_output_shapes
:џџџџџџџџџ
 
transform/transform/initNoOp
"
transform/transform/init_1NoOp

transform/initNoOp
C
SizeSizeinput_example_tensor*
T0*
_output_shapes
: 
M
range/startConst*
_output_shapes
: *
value	B : *
dtype0
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
S
rangeRangerange/startSizerange/delta*#
_output_shapes
:џџџџџџџџџ
N
Const_2Const*
valueB B0.15.4*
dtype0*
_output_shapes
: 
a
IdentityIdentityParseExample/ParseExample*
T0*'
_output_shapes
:џџџџџџџџџ
e

Identity_1IdentityParseExample/ParseExample:1*
T0	*'
_output_shapes
:џџџџџџџџџ
e

Identity_2IdentityParseExample/ParseExample:2*
T0	*'
_output_shapes
:џџџџџџџџџ
e

Identity_3IdentityParseExample/ParseExample:3*
T0*'
_output_shapes
:џџџџџџџџџ
e

Identity_4IdentityParseExample/ParseExample:4*'
_output_shapes
:џџџџџџџџџ*
T0
e

Identity_5IdentityParseExample/ParseExample:5*
T0*'
_output_shapes
:џџџџџџџџџ
e

Identity_6IdentityParseExample/ParseExample:6*'
_output_shapes
:џџџџџџџџџ*
T0
e

Identity_7IdentityParseExample/ParseExample:7*'
_output_shapes
:џџџџџџџџџ*
T0	
e

Identity_8IdentityParseExample/ParseExample:8*
T0	*'
_output_shapes
:џџџџџџџџџ
e

Identity_9IdentityParseExample/ParseExample:9*'
_output_shapes
:џџџџџџџџџ*
T0
g
Identity_10IdentityParseExample/ParseExample:10*'
_output_shapes
:џџџџџџџџџ*
T0
g
Identity_11IdentityParseExample/ParseExample:11*
T0*'
_output_shapes
:џџџџџџџџџ
g
Identity_12IdentityParseExample/ParseExample:12*
T0*'
_output_shapes
:џџџџџџџџџ
g
Identity_13IdentityParseExample/ParseExample:13*
T0	*'
_output_shapes
:џџџџџџџџџ
g
Identity_14IdentityParseExample/ParseExample:14*'
_output_shapes
:џџџџџџџџџ*
T0	
g
Identity_15IdentityParseExample/ParseExample:15*
T0	*'
_output_shapes
:џџџџџџџџџ
g
Identity_16IdentityParseExample/ParseExample:16*'
_output_shapes
:џџџџџџџџџ*
T0	
g
Identity_17IdentityParseExample/ParseExample:17*
T0	*'
_output_shapes
:џџџџџџџџџ
Ђ
Identity_18IdentityWtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2*
T0	*'
_output_shapes
:џџџџџџџџџ

Identity_19Identity>transform/transform/inputs/inputs/F_pickup_community_area_copy*
T0	*'
_output_shapes
:џџџџџџџџџ

Identity_20Identity9transform/transform/inputs/inputs/F_trip_start_month_copy*
T0	*'
_output_shapes
:џџџџџџџџџ

Identity_21Identity<transform/transform/inputs/inputs/F_pickup_census_tract_copy*'
_output_shapes
:џџџџџџџџџ*
T0	

Identity_22Identity7transform/transform/inputs/inputs/F_trip_start_day_copy*
T0	*'
_output_shapes
:џџџџџџџџџ

Identity_23Identity8transform/transform/inputs/inputs/F_trip_start_hour_copy*
T0	*'
_output_shapes
:џџџџџџџџџ

Identity_24IdentityFtransform/transform/scale_to_z_score/scale_to_z_score_per_key/SelectV2*'
_output_shapes
:џџџџџџџџџ*
T0

Identity_25IdentityHtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectV2*
T0*'
_output_shapes
:џџџџџџџџџ

Identity_26IdentityQtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose*
T0	*'
_output_shapes
:џџџџџџџџџ

Identity_27IdentityQtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose*'
_output_shapes
:џџџџџџџџџ*
T0	
e
Identity_28Identitytransform/transform/Select*'
_output_shapes
:џџџџџџџџџ*
T0	

Identity_29IdentityOtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose*'
_output_shapes
:џџџџџџџџџ*
T0	

Identity_30IdentityQtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose*
T0	*'
_output_shapes
:џџџџџџџџџ

Identity_31IdentityHtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectV2*
T0*'
_output_shapes
:џџџџџџџџџ
Є
Identity_32IdentityYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2*
T0	*'
_output_shapes
:џџџџџџџџџ

Identity_33Identity?transform/transform/inputs/inputs/F_dropoff_community_area_copy*'
_output_shapes
:џџџџџџџџџ*
T0	

Identity_34Identity=transform/transform/inputs/inputs/F_dropoff_census_tract_copy*'
_output_shapes
:џџџџџџџџџ*
T0	
e
Identity_35Identitytransform/transform/Select*
T0	*'
_output_shapes
:џџџџџџџџџ
u
:dnn/input_from_feature_columns/input_layer/fare_xf_1/ShapeShapeIdentity_31*
T0*
_output_shapes
:

Hdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ж
Bdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_sliceStridedSlice:dnn/input_from_feature_columns/input_layer/fare_xf_1/ShapeHdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stackJdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_1Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Ddnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Bdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shapePackBdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_sliceDdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape/1*
T0*
N*
_output_shapes
:
Ъ
<dnn/input_from_feature_columns/input_layer/fare_xf_1/ReshapeReshapeIdentity_31Bdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ
{
@dnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ShapeShapeIdentity_24*
T0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
Hdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ShapeNdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stackPdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Jdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Hdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_sliceJdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape/1*
N*
_output_shapes
:*
T0
ж
Bdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ReshapeReshapeIdentity_24Hdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ
}
Bdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ShapeShapeIdentity_25*
T0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
о
Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_sliceStridedSliceBdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ShapePdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stackRdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_1Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0

Ldnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shapePackJdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_sliceLdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape/1*
N*
_output_shapes
:*
T0
к
Ddnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ReshapeReshapeIdentity_25Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

6dnn/input_from_feature_columns/input_layer/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ј
1dnn/input_from_feature_columns/input_layer/concatConcatV2<dnn/input_from_feature_columns/input_layer/fare_xf_1/ReshapeBdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ReshapeDdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N*'
_output_shapes
:џџџџџџџџџ*
T0
З
9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   d   *+
_class!
loc:@dnn/hiddenlayer_0/kernel
Љ
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *о%wО*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
dtype0
Љ
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/maxConst*
valueB
 *о%w>*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes
: 
№
Adnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shape*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes

:d*
T0
ў
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: 

7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:d

3dnn/hiddenlayer_0/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:d
Й
dnn/hiddenlayer_0/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape
:d*)
shared_namednn/hiddenlayer_0/kernel*+
_class!
loc:@dnn/hiddenlayer_0/kernel

9dnn/hiddenlayer_0/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel*
_output_shapes
: 

dnn/hiddenlayer_0/kernel/AssignAssignVariableOpdnn/hiddenlayer_0/kernel3dnn/hiddenlayer_0/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_0/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes

:d
 
(dnn/hiddenlayer_0/bias/Initializer/zerosConst*
valueBd*    *)
_class
loc:@dnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:d
Џ
dnn/hiddenlayer_0/biasVarHandleOp*
shape:d*'
shared_namednn/hiddenlayer_0/bias*)
_class
loc:@dnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
: 
}
7dnn/hiddenlayer_0/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias*
_output_shapes
: 

dnn/hiddenlayer_0/bias/AssignAssignVariableOpdnn/hiddenlayer_0/bias(dnn/hiddenlayer_0/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_0/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:d

'dnn/hiddenlayer_0/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes

:d
А
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concat'dnn/hiddenlayer_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd
{
(dnn/hiddenlayer_0/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:d

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMul(dnn/hiddenlayer_0/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџd
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
T0*
out_type0	*
_output_shapes
: 
c
dnn/zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
к
dnn/zero_fraction/condStatelessIfdnn/zero_fraction/LessEqualdnn/hiddenlayer_0/Relu*5
else_branch&R$
"dnn_zero_fraction_cond_false_12178*
output_shapes
: : : : : : *
_lower_using_switch_merge(*
Tout

2	*
Tcond0
*4
then_branch%R#
!dnn_zero_fraction_cond_true_12177* 
_output_shapes
: : : : : : *
Tin
2
d
dnn/zero_fraction/cond/IdentityIdentitydnn/zero_fraction/cond*
T0	*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_1Identitydnn/zero_fraction/cond:1*
_output_shapes
: *
T0
h
!dnn/zero_fraction/cond/Identity_2Identitydnn/zero_fraction/cond:2*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_3Identitydnn/zero_fraction/cond:3*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_4Identitydnn/zero_fraction/cond:4*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_5Identitydnn/zero_fraction/cond:5*
T0*
_output_shapes
: 

(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Identity*
T0	*
_output_shapes
: 

)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
А
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*:
value1B/ B)dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Ї
)dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_0/activation/tagConst*-
value$B" Bdnn/hiddenlayer_0/activation*
dtype0*
_output_shapes
: 

dnn/hiddenlayer_0/activationHistogramSummary dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
З
9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shapeConst*
valueB"d   F   *+
_class!
loc:@dnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
:
Љ
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/minConst*
valueB
 *H`@О*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
: 
Љ
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *H`@>*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
dtype0
№
Adnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:dF*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel
ў
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel

7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:dF

3dnn/hiddenlayer_1/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:dF
Й
dnn/hiddenlayer_1/kernelVarHandleOp*)
shared_namednn/hiddenlayer_1/kernel*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
: *
shape
:dF

9dnn/hiddenlayer_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel*
_output_shapes
: 

dnn/hiddenlayer_1/kernel/AssignAssignVariableOpdnn/hiddenlayer_1/kernel3dnn/hiddenlayer_1/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_1/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes

:dF
 
(dnn/hiddenlayer_1/bias/Initializer/zerosConst*
_output_shapes
:F*
valueBF*    *)
_class
loc:@dnn/hiddenlayer_1/bias*
dtype0
Џ
dnn/hiddenlayer_1/biasVarHandleOp*
shape:F*'
shared_namednn/hiddenlayer_1/bias*)
_class
loc:@dnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
: 
}
7dnn/hiddenlayer_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias*
_output_shapes
: 

dnn/hiddenlayer_1/bias/AssignAssignVariableOpdnn/hiddenlayer_1/bias(dnn/hiddenlayer_1/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_1/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
:F

'dnn/hiddenlayer_1/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes

:dF

dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Relu'dnn/hiddenlayer_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџF
{
(dnn/hiddenlayer_1/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
:F

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMul(dnn/hiddenlayer_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџF
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*'
_output_shapes
:џџџџџџџџџF*
T0
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
_output_shapes
: *
T0*
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 
т
dnn/zero_fraction_1/condStatelessIfdnn/zero_fraction_1/LessEqualdnn/hiddenlayer_1/Relu*7
else_branch(R&
$dnn_zero_fraction_1_cond_false_12248*
output_shapes
: : : : : : *
_lower_using_switch_merge(*
Tout

2	*6
then_branch'R%
#dnn_zero_fraction_1_cond_true_12247*
Tcond0
*
Tin
2* 
_output_shapes
: : : : : : 
h
!dnn/zero_fraction_1/cond/IdentityIdentitydnn/zero_fraction_1/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_1Identitydnn/zero_fraction_1/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_2Identitydnn/zero_fraction_1/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_3Identitydnn/zero_fraction_1/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_4Identitydnn/zero_fraction_1/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_5Identitydnn/zero_fraction_1/cond:5*
_output_shapes
: *
T0

*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Size!dnn/zero_fraction_1/cond/Identity*
_output_shapes
: *
T0	

+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*
_output_shapes
: *

DstT0*

SrcT0	
Ж
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*:
value1B/ B)dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Љ
)dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_1/activation/tagConst*-
value$B" Bdnn/hiddenlayer_1/activation*
dtype0*
_output_shapes
: 

dnn/hiddenlayer_1/activationHistogramSummary dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
З
9dnn/hiddenlayer_2/kernel/Initializer/random_uniform/shapeConst*
valueB"F   0   *+
_class!
loc:@dnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
:
Љ
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/minConst*
valueB
 *йчfО*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
: 
Љ
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *йчf>*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
: 
№
Adnn/hiddenlayer_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_2/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes

:F0
ў
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: 

7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_2/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:F0

3dnn/hiddenlayer_2/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:F0
Й
dnn/hiddenlayer_2/kernelVarHandleOp*
shape
:F0*)
shared_namednn/hiddenlayer_2/kernel*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
: 

9dnn/hiddenlayer_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel*
_output_shapes
: 

dnn/hiddenlayer_2/kernel/AssignAssignVariableOpdnn/hiddenlayer_2/kernel3dnn/hiddenlayer_2/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_2/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel*
_output_shapes

:F0*
dtype0
 
(dnn/hiddenlayer_2/bias/Initializer/zerosConst*
valueB0*    *)
_class
loc:@dnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:0
Џ
dnn/hiddenlayer_2/biasVarHandleOp*'
shared_namednn/hiddenlayer_2/bias*)
_class
loc:@dnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
: *
shape:0
}
7dnn/hiddenlayer_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias*
_output_shapes
: 

dnn/hiddenlayer_2/bias/AssignAssignVariableOpdnn/hiddenlayer_2/bias(dnn/hiddenlayer_2/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_2/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:0

'dnn/hiddenlayer_2/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes

:F0

dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Relu'dnn/hiddenlayer_2/MatMul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ0*
T0
{
(dnn/hiddenlayer_2/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:0

dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMul(dnn/hiddenlayer_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ0
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*'
_output_shapes
:џџџџџџџџџ0*
T0
i
dnn/zero_fraction_2/SizeSizednn/hiddenlayer_2/Relu*
T0*
out_type0	*
_output_shapes
: 
e
dnn/zero_fraction_2/LessEqual/yConst*
_output_shapes
: *
valueB	 Rџџџџ*
dtype0	

dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 
т
dnn/zero_fraction_2/condStatelessIfdnn/zero_fraction_2/LessEqualdnn/hiddenlayer_2/Relu*
Tin
2* 
_output_shapes
: : : : : : *7
else_branch(R&
$dnn_zero_fraction_2_cond_false_12318*
output_shapes
: : : : : : *
_lower_using_switch_merge(*
Tout

2	*
Tcond0
*6
then_branch'R%
#dnn_zero_fraction_2_cond_true_12317
h
!dnn/zero_fraction_2/cond/IdentityIdentitydnn/zero_fraction_2/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_1Identitydnn/zero_fraction_2/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_2Identitydnn/zero_fraction_2/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_3Identitydnn/zero_fraction_2/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_4Identitydnn/zero_fraction_2/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_5Identitydnn/zero_fraction_2/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Size!dnn/zero_fraction_2/cond/Identity*
_output_shapes
: *
T0	

+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ж
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*:
value1B/ B)dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Љ
)dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_2/activation/tagConst*
_output_shapes
: *-
value$B" Bdnn/hiddenlayer_2/activation*
dtype0

dnn/hiddenlayer_2/activationHistogramSummary dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: 
З
9dnn/hiddenlayer_3/kernel/Initializer/random_uniform/shapeConst*
valueB"0   "   *+
_class!
loc:@dnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes
:
Љ
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/minConst*
valueB
 *О*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes
: 
Љ
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *>*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes
: 
№
Adnn/hiddenlayer_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_3/kernel/Initializer/random_uniform/shape*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes

:0"*
T0
ў
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: 

7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_3/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:0"

3dnn/hiddenlayer_3/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/min*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:0"*
T0
Й
dnn/hiddenlayer_3/kernelVarHandleOp*
shape
:0"*)
shared_namednn/hiddenlayer_3/kernel*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes
: 

9dnn/hiddenlayer_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/kernel*
_output_shapes
: 

dnn/hiddenlayer_3/kernel/AssignAssignVariableOpdnn/hiddenlayer_3/kernel3dnn/hiddenlayer_3/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_3/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes

:0"
 
(dnn/hiddenlayer_3/bias/Initializer/zerosConst*
valueB"*    *)
_class
loc:@dnn/hiddenlayer_3/bias*
dtype0*
_output_shapes
:"
Џ
dnn/hiddenlayer_3/biasVarHandleOp*
shape:"*'
shared_namednn/hiddenlayer_3/bias*)
_class
loc:@dnn/hiddenlayer_3/bias*
dtype0*
_output_shapes
: 
}
7dnn/hiddenlayer_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/bias*
_output_shapes
: 

dnn/hiddenlayer_3/bias/AssignAssignVariableOpdnn/hiddenlayer_3/bias(dnn/hiddenlayer_3/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_3/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias*
dtype0*
_output_shapes
:"

'dnn/hiddenlayer_3/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes

:0"

dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Relu'dnn/hiddenlayer_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ"
{
(dnn/hiddenlayer_3/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias*
dtype0*
_output_shapes
:"

dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMul(dnn/hiddenlayer_3/BiasAdd/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ"*
T0
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ"
i
dnn/zero_fraction_3/SizeSizednn/hiddenlayer_3/Relu*
T0*
out_type0	*
_output_shapes
: 
e
dnn/zero_fraction_3/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction_3/LessEqual	LessEqualdnn/zero_fraction_3/Sizednn/zero_fraction_3/LessEqual/y*
T0	*
_output_shapes
: 
т
dnn/zero_fraction_3/condStatelessIfdnn/zero_fraction_3/LessEqualdnn/hiddenlayer_3/Relu*
_lower_using_switch_merge(*
Tout

2	*
Tcond0
*6
then_branch'R%
#dnn_zero_fraction_3_cond_true_12387* 
_output_shapes
: : : : : : *
Tin
2*7
else_branch(R&
$dnn_zero_fraction_3_cond_false_12388*
output_shapes
: : : : : : 
h
!dnn/zero_fraction_3/cond/IdentityIdentitydnn/zero_fraction_3/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_1Identitydnn/zero_fraction_3/cond:1*
_output_shapes
: *
T0
l
#dnn/zero_fraction_3/cond/Identity_2Identitydnn/zero_fraction_3/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_3Identitydnn/zero_fraction_3/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_4Identitydnn/zero_fraction_3/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_5Identitydnn/zero_fraction_3/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_3/counts_to_fraction/subSubdnn/zero_fraction_3/Size!dnn/zero_fraction_3/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_3/counts_to_fraction/CastCast*dnn/zero_fraction_3/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_3/counts_to_fraction/Cast_1Castdnn/zero_fraction_3/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ж
.dnn/zero_fraction_3/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_3/counts_to_fraction/Cast-dnn/zero_fraction_3/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
y
dnn/zero_fraction_3/fractionIdentity.dnn/zero_fraction_3/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*:
value1B/ B)dnn/hiddenlayer_3/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Љ
)dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/fraction*
_output_shapes
: *
T0
}
 dnn/hiddenlayer_3/activation/tagConst*-
value$B" Bdnn/hiddenlayer_3/activation*
dtype0*
_output_shapes
: 

dnn/hiddenlayer_3/activationHistogramSummary dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
_output_shapes
: 
Љ
2dnn/logits/kernel/Initializer/random_uniform/shapeConst*
valueB""      *$
_class
loc:@dnn/logits/kernel*
dtype0*
_output_shapes
:

0dnn/logits/kernel/Initializer/random_uniform/minConst*
valueB
 *їќгО*$
_class
loc:@dnn/logits/kernel*
dtype0*
_output_shapes
: 

0dnn/logits/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *їќг>*$
_class
loc:@dnn/logits/kernel*
dtype0
л
:dnn/logits/kernel/Initializer/random_uniform/RandomUniformRandomUniform2dnn/logits/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@dnn/logits/kernel*
dtype0*
_output_shapes

:"
т
0dnn/logits/kernel/Initializer/random_uniform/subSub0dnn/logits/kernel/Initializer/random_uniform/max0dnn/logits/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@dnn/logits/kernel
є
0dnn/logits/kernel/Initializer/random_uniform/mulMul:dnn/logits/kernel/Initializer/random_uniform/RandomUniform0dnn/logits/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:"
ц
,dnn/logits/kernel/Initializer/random_uniformAdd0dnn/logits/kernel/Initializer/random_uniform/mul0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:"
Є
dnn/logits/kernelVarHandleOp*
_output_shapes
: *
shape
:"*"
shared_namednn/logits/kernel*$
_class
loc:@dnn/logits/kernel*
dtype0
s
2dnn/logits/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel*
_output_shapes
: 
z
dnn/logits/kernel/AssignAssignVariableOpdnn/logits/kernel,dnn/logits/kernel/Initializer/random_uniform*
dtype0
w
%dnn/logits/kernel/Read/ReadVariableOpReadVariableOpdnn/logits/kernel*
dtype0*
_output_shapes

:"

!dnn/logits/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *"
_class
loc:@dnn/logits/bias*
dtype0

dnn/logits/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:* 
shared_namednn/logits/bias*"
_class
loc:@dnn/logits/bias
o
0dnn/logits/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias*
_output_shapes
: 
k
dnn/logits/bias/AssignAssignVariableOpdnn/logits/bias!dnn/logits/bias/Initializer/zeros*
dtype0
o
#dnn/logits/bias/Read/ReadVariableOpReadVariableOpdnn/logits/bias*
dtype0*
_output_shapes
:
r
 dnn/logits/MatMul/ReadVariableOpReadVariableOpdnn/logits/kernel*
dtype0*
_output_shapes

:"

dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Relu dnn/logits/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
m
!dnn/logits/BiasAdd/ReadVariableOpReadVariableOpdnn/logits/bias*
dtype0*
_output_shapes
:

dnn/logits/BiasAddBiasAdddnn/logits/MatMul!dnn/logits/BiasAdd/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
e
dnn/zero_fraction_4/SizeSizednn/logits/BiasAdd*
T0*
out_type0	*
_output_shapes
: 
e
dnn/zero_fraction_4/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction_4/LessEqual	LessEqualdnn/zero_fraction_4/Sizednn/zero_fraction_4/LessEqual/y*
T0	*
_output_shapes
: 
о
dnn/zero_fraction_4/condStatelessIfdnn/zero_fraction_4/LessEqualdnn/logits/BiasAdd*
_lower_using_switch_merge(*
Tout

2	*
Tcond0
*6
then_branch'R%
#dnn_zero_fraction_4_cond_true_12456*
Tin
2* 
_output_shapes
: : : : : : *7
else_branch(R&
$dnn_zero_fraction_4_cond_false_12457*
output_shapes
: : : : : : 
h
!dnn/zero_fraction_4/cond/IdentityIdentitydnn/zero_fraction_4/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_1Identitydnn/zero_fraction_4/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_2Identitydnn/zero_fraction_4/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_3Identitydnn/zero_fraction_4/cond:3*
_output_shapes
: *
T0
l
#dnn/zero_fraction_4/cond/Identity_4Identitydnn/zero_fraction_4/cond:4*
_output_shapes
: *
T0
l
#dnn/zero_fraction_4/cond/Identity_5Identitydnn/zero_fraction_4/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_4/counts_to_fraction/subSubdnn/zero_fraction_4/Size!dnn/zero_fraction_4/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_4/counts_to_fraction/CastCast*dnn/zero_fraction_4/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_4/counts_to_fraction/Cast_1Castdnn/zero_fraction_4/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ж
.dnn/zero_fraction_4/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_4/counts_to_fraction/Cast-dnn/zero_fraction_4/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_4/fractionIdentity.dnn/zero_fraction_4/counts_to_fraction/truediv*
_output_shapes
: *
T0

'dnn/logits/fraction_of_zero_values/tagsConst*3
value*B( B"dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 

"dnn/logits/fraction_of_zero_valuesScalarSummary'dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/fraction*
T0*
_output_shapes
: 
o
dnn/logits/activation/tagConst*&
valueB Bdnn/logits/activation*
dtype0*
_output_shapes
: 
p
dnn/logits/activationHistogramSummarydnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
д
Hlinear/linear_model/company_xf/weights/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"ђ     *9
_class/
-+loc:@linear/linear_model/company_xf/weights
О
>linear/linear_model/company_xf/weights/Initializer/zeros/ConstConst*
valueB
 *    *9
_class/
-+loc:@linear/linear_model/company_xf/weights*
dtype0*
_output_shapes
: 
Џ
8linear/linear_model/company_xf/weights/Initializer/zerosFillHlinear/linear_model/company_xf/weights/Initializer/zeros/shape_as_tensor>linear/linear_model/company_xf/weights/Initializer/zeros/Const*
T0*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
_output_shapes
:	ђ
ф
&linear/linear_model/company_xf/weightsVarHandleOp*7
shared_name(&linear/linear_model/company_xf/weights*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
dtype0*
_output_shapes
: *
shape:	ђ

Glinear/linear_model/company_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp&linear/linear_model/company_xf/weights*
_output_shapes
: 
А
-linear/linear_model/company_xf/weights/AssignAssignVariableOp&linear/linear_model/company_xf/weights8linear/linear_model/company_xf/weights/Initializer/zeros*
dtype0
Ђ
:linear/linear_model/company_xf/weights/Read/ReadVariableOpReadVariableOp&linear/linear_model/company_xf/weights*
dtype0*
_output_shapes
:	ђ
к
Alinear/linear_model/dropoff_latitude_xf/weights/Initializer/zerosConst*
valueB
*    *B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*
dtype0*
_output_shapes

:

ў
/linear/linear_model/dropoff_latitude_xf/weightsVarHandleOp*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*
dtype0*
_output_shapes
: *
shape
:
*@
shared_name1/linear/linear_model/dropoff_latitude_xf/weights
Џ
Plinear/linear_model/dropoff_latitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes
: 
Ы
6linear/linear_model/dropoff_latitude_xf/weights/AssignAssignVariableOp/linear/linear_model/dropoff_latitude_xf/weightsAlinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros*
dtype0
Г
Clinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/dropoff_latitude_xf/weights*
dtype0*
_output_shapes

:

м
Blinear/linear_model/dropoff_longitude_xf/weights/Initializer/zerosConst*
valueB
*    *C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*
dtype0*
_output_shapes

:


0linear/linear_model/dropoff_longitude_xf/weightsVarHandleOp*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*
dtype0*
_output_shapes
: *
shape
:
*A
shared_name20linear/linear_model/dropoff_longitude_xf/weights
Б
Qlinear/linear_model/dropoff_longitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp0linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes
: 
Ю
7linear/linear_model/dropoff_longitude_xf/weights/AssignAssignVariableOp0linear/linear_model/dropoff_longitude_xf/weightsBlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros*
dtype0
Е
Dlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOpReadVariableOp0linear/linear_model/dropoff_longitude_xf/weights*
dtype0*
_output_shapes

:

о
Mlinear/linear_model/payment_type_xf/weights/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"ђ     *>
_class4
20loc:@linear/linear_model/payment_type_xf/weights
Ш
Clinear/linear_model/payment_type_xf/weights/Initializer/zeros/ConstConst*
valueB
 *    *>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
dtype0*
_output_shapes
: 
У
=linear/linear_model/payment_type_xf/weights/Initializer/zerosFillMlinear/linear_model/payment_type_xf/weights/Initializer/zeros/shape_as_tensorClinear/linear_model/payment_type_xf/weights/Initializer/zeros/Const*
T0*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
_output_shapes
:	ђ
ѓ
+linear/linear_model/payment_type_xf/weightsVarHandleOp*
_output_shapes
: *
shape:	ђ*<
shared_name-+linear/linear_model/payment_type_xf/weights*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
dtype0
Ї
Llinear/linear_model/payment_type_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/payment_type_xf/weights*
_output_shapes
: 
П
2linear/linear_model/payment_type_xf/weights/AssignAssignVariableOp+linear/linear_model/payment_type_xf/weights=linear/linear_model/payment_type_xf/weights/Initializer/zeros*
dtype0
Ќ
?linear/linear_model/payment_type_xf/weights/Read/ReadVariableOpReadVariableOp+linear/linear_model/payment_type_xf/weights*
dtype0*
_output_shapes
:	ђ
и
@linear/linear_model/pickup_latitude_xf/weights/Initializer/zerosConst*
valueB
*    *A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*
dtype0*
_output_shapes

:

ћ
.linear/linear_model/pickup_latitude_xf/weightsVarHandleOp*
shape
:
*?
shared_name0.linear/linear_model/pickup_latitude_xf/weights*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*
dtype0*
_output_shapes
: 
­
Olinear/linear_model/pickup_latitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp.linear/linear_model/pickup_latitude_xf/weights*
_output_shapes
: 
Ш
5linear/linear_model/pickup_latitude_xf/weights/AssignAssignVariableOp.linear/linear_model/pickup_latitude_xf/weights@linear/linear_model/pickup_latitude_xf/weights/Initializer/zeros*
dtype0
Б
Blinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOpReadVariableOp.linear/linear_model/pickup_latitude_xf/weights*
_output_shapes

:
*
dtype0
к
Alinear/linear_model/pickup_longitude_xf/weights/Initializer/zerosConst*
valueB
*    *B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*
dtype0*
_output_shapes

:

ў
/linear/linear_model/pickup_longitude_xf/weightsVarHandleOp*
_output_shapes
: *
shape
:
*@
shared_name1/linear/linear_model/pickup_longitude_xf/weights*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*
dtype0
Џ
Plinear/linear_model/pickup_longitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/pickup_longitude_xf/weights*
_output_shapes
: 
Ы
6linear/linear_model/pickup_longitude_xf/weights/AssignAssignVariableOp/linear/linear_model/pickup_longitude_xf/weightsAlinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros*
dtype0
Г
Clinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/pickup_longitude_xf/weights*
dtype0*
_output_shapes

:

ж
?linear/linear_model/trip_start_day_xf/weights/Initializer/zerosConst*
valueB*    *@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*
dtype0*
_output_shapes

:
ј
-linear/linear_model/trip_start_day_xf/weightsVarHandleOp*>
shared_name/-linear/linear_model/trip_start_day_xf/weights*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*
dtype0*
_output_shapes
: *
shape
:
Ћ
Nlinear/linear_model/trip_start_day_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp-linear/linear_model/trip_start_day_xf/weights*
_output_shapes
: 
Х
4linear/linear_model/trip_start_day_xf/weights/AssignAssignVariableOp-linear/linear_model/trip_start_day_xf/weights?linear/linear_model/trip_start_day_xf/weights/Initializer/zeros*
dtype0
Џ
Alinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOpReadVariableOp-linear/linear_model/trip_start_day_xf/weights*
dtype0*
_output_shapes

:
и
@linear/linear_model/trip_start_hour_xf/weights/Initializer/zerosConst*
_output_shapes

:*
valueB*    *A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*
dtype0
ћ
.linear/linear_model/trip_start_hour_xf/weightsVarHandleOp*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*
dtype0*
_output_shapes
: *
shape
:*?
shared_name0.linear/linear_model/trip_start_hour_xf/weights
­
Olinear/linear_model/trip_start_hour_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp.linear/linear_model/trip_start_hour_xf/weights*
_output_shapes
: 
Ш
5linear/linear_model/trip_start_hour_xf/weights/AssignAssignVariableOp.linear/linear_model/trip_start_hour_xf/weights@linear/linear_model/trip_start_hour_xf/weights/Initializer/zeros*
dtype0
Б
Blinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOpReadVariableOp.linear/linear_model/trip_start_hour_xf/weights*
dtype0*
_output_shapes

:
к
Alinear/linear_model/trip_start_month_xf/weights/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes

:
ў
/linear/linear_model/trip_start_month_xf/weightsVarHandleOp*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes
: *
shape
:*@
shared_name1/linear/linear_model/trip_start_month_xf/weights
Џ
Plinear/linear_model/trip_start_month_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/trip_start_month_xf/weights*
_output_shapes
: 
Ы
6linear/linear_model/trip_start_month_xf/weights/AssignAssignVariableOp/linear/linear_model/trip_start_month_xf/weightsAlinear/linear_model/trip_start_month_xf/weights/Initializer/zeros*
dtype0
Г
Clinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes

:
Д
2linear/linear_model/bias_weights/Initializer/zerosConst*
_output_shapes
:*
valueB*    *3
_class)
'%loc:@linear/linear_model/bias_weights*
dtype0
Э
 linear/linear_model/bias_weightsVarHandleOp*3
_class)
'%loc:@linear/linear_model/bias_weights*
dtype0*
_output_shapes
: *
shape:*1
shared_name" linear/linear_model/bias_weights

Alinear/linear_model/bias_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp linear/linear_model/bias_weights*
_output_shapes
: 

'linear/linear_model/bias_weights/AssignAssignVariableOp linear/linear_model/bias_weights2linear/linear_model/bias_weights/Initializer/zeros*
dtype0

4linear/linear_model/bias_weights/Read/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
А
elinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_valueCastelinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/NotEqualNotEqualIdentity_32clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ё
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indicesWhere_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesGatherNdIdentity_32^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
­
blinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shapeShapeIdentity_32*
out_type0	*
_output_shapes
:*
T0	

Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets/xConst*
value
B :ђ*
dtype0*
_output_shapes
: 
р
Rlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_bucketsCastTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero/xConst*
_output_shapes
: *
value	B : *
dtype0
в
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zeroCastMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
­
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/LessLess]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
Ф
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/GreaterEqualGreaterEqual]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesRlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets*#
_output_shapes
:џџџџџџџџџ*
T0	
Ї
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/out_of_range	LogicalOrKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/LessSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
й
Llinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ShapeShape]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
в
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/CastCastMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
І
Ulinear/linear_model/linear/linear_model/linear/linear_model/company_xf/default_valuesFillLlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ShapeKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	

Olinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SelectV2SelectV2Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/out_of_rangeUlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/default_values]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
ѓ
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Shape_1/CastCastblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
Є
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
І
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
І
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_sliceStridedSliceSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Shape_1/CastZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_1\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

Qlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ў
Olinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/xPackTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_sliceQlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
к
Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1CastOlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
Ї
Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshapeSparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indicesblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shapeMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ш
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape/IdentityIdentityOlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Љ
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ј
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
­
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SliceSliceVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/begin^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ѓ
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
З
Xlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ProdProdYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SliceYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Const*
_output_shapes
: *
T0	
І
dlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ѓ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Э
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2GatherV2Vlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/indicesalinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
Ш
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast/xPackXlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Prod\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshapeSparseReshapeTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshapeVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

jlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/IdentityIdentity]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	
Є
blinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ю
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqualGreaterEqualjlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/Identityblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
э
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/WhereWhere`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Д
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
в
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ReshapeReshapeYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Wherealinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ф
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1GatherV2alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshapeclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
щ
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/Identity[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshapeclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
ђ
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/IdentityIdentityclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ў
{linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Identitymlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
а
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
г
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
г
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:

ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice{linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0
А
plinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/CastCastylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
И
rlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique}linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ћ
|linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather&linear/linear_model/company_xf/weightsrlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	
§
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity|linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0*9
_class/
-+loc:@linear/linear_model/company_xf/weights
Ю
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
Ѓ
klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique:1plinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Д
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
ў
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1Reshape}linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
є
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ShapeShapeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Б
glinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
б
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_sliceStridedSliceYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shapeglinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stackilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_1ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Я
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stackPack[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack/0alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
е
Xlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/TileTile]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/zeros_like	ZerosLikeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ж
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sumSelectXlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Tile^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/zeros_likeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ю
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast_1CastVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Њ
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
З
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1SliceZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast_1alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/begin`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
о
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shape_1ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum*
T0*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Г
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
И
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2Slice[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shape_1alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/begin`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ё
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Џ
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concatConcatV2[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat/axis*
N*
_output_shapes
:*
T0
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_2ReshapeSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sumZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
T0
Й
nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/x*
_output_shapes
: *

DstT0	*

SrcT0
Ё
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqualNotEqualIdentity_27llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ќ
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/valuesGatherNdIdentity_27glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Ж
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeShapeIdentity_27*
_output_shapes
:*
T0	*
out_type0	

]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets/xConst*
_output_shapes
: *
value	B :
*
dtype0
ђ
[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
Ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
п
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Т
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast/xConst*
_output_shapes
: *
value	B : *
dtype0
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast/x*
_output_shapes
: *

DstT0	*

SrcT0
С
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Xlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
­
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Ѕ
Zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
Xlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ь
Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
њ
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
В
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Б
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
valueB:*
dtype0
б
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
в
alinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ё
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
у
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
Я
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
џ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
э
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	

elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
И
vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Ќ
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
к
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
м
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
Д
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0
У
ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Ы
{linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
а
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/dropoff_latitude_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ

linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights
р
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
Ч
tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Н
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0


blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
М
rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ў
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
І
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ъ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
№
alinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
л
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
№
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum*
_output_shapes
:*
T0
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
М
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
м
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
г
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat/axis*
N*
_output_shapes
:*
T0
ц
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
К
olinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_valueCastolinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/x*
_output_shapes
: *

DstT0	*

SrcT0
Ѓ
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqualNotEqualIdentity_30mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	

hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indicesWhereilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ў
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/valuesGatherNdIdentity_30hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
З
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeShapeIdentity_30*
out_type0	*
_output_shapes
:*
T0	
 
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
є
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_bucketsCast^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero/xConst*
_output_shapes
: *
value	B : *
dtype0
ц
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zeroCastWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
Ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/LessLessglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/valuesUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
т
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/GreaterEqualGreaterEqualglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Х
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/out_of_range	LogicalOrUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Less]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
э
Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ShapeShapeglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
ц
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/CastCastWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
Ф
_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/default_valuesFillVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ShapeUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	
М
Ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SelectV2SelectV2]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/out_of_range_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/default_valuesglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values*#
_output_shapes
:џџџџџџџџџ*
T0	

]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Shape_1/CastCastllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
А
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Щ
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_sliceStridedSlice]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Shape_1/Castdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stackflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_1flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
І
[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x/1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Ь
Ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/xPack^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x/1*
N*
_output_shapes
:*
T0
ю
Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1CastYlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0
Я
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshapeSparseReshapehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indicesllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ќ
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape/IdentityIdentityYlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
В
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
е
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SliceSlice`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginhlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
valueB: *
dtype0
е
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ProdProdclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Sliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
А
nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
­
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ѕ
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2GatherV2`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
ц
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast/xPackblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Prodflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2*
_output_shapes
:*
T0	*
N
г
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeSparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqualGreaterEqualtlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/Identityllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	

clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/WhereWherejlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
О
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
№
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeReshapeclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Whereklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1GatherV2klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshapemlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0

hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2GatherV2tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/Identityelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshapemlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/IdentityIdentitymlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Й
wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
Б
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowshlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Identitywlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
л
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
н
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
н
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Й
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	
Х
zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Э
|linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
д
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather0linear/linear_model/dropoff_longitude_xf/weights|linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ

linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*'
_output_shapes
:џџџџџџџџџ*
T0
т
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
Ы
ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1~linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
О
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
valueB"џџџџ   *
dtype0

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0


clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ShapeShapeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Н
slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Н
slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_sliceStridedSliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shapeqlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Ї
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
э
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stackPackelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack/0klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
ѓ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/TileTileglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0


hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/zeros_like	ZerosLikeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
о
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sumSelectblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Tilehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/zeros_likeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1Cast`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Е
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
п
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1Slicedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
ђ
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1Shape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum*
_output_shapes
:*
T0
Е
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
р
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2Sliceelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
з
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concatConcatV2elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
щ
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2Reshape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sumdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Е
jlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_valueCastjlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/NotEqualNotEqualIdentity_18hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	
ћ
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indicesWheredlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Є
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesGatherNdIdentity_18clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
В
glinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shapeShapeIdentity_18*
T0	*
out_type0	*
_output_shapes
:

Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets/xConst*
value
B :ђ*
dtype0*
_output_shapes
: 
ъ
Wlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_bucketsCastYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
м
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zeroCastRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
М
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/LessLessblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesPlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
г
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/GreaterEqualGreaterEqualblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesWlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Ж
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/out_of_range	LogicalOrPlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/LessXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
у
Qlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ShapeShapeblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
м
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/CastCastRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast/x*
_output_shapes
: *

DstT0	*

SrcT0
Е
Zlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/default_valuesFillQlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ShapePlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
Ј
Tlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SelectV2SelectV2Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/out_of_rangeZlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/default_valuesblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
§
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Shape_1/CastCastglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
Љ
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
А
Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_sliceStridedSliceXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Shape_1/Cast_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stackalinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_1alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Ё
Vlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x/1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Н
Tlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/xPackYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_sliceVlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ф
Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1CastTlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
Л
Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshapeSparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indicesglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shapeRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ђ
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape/IdentityIdentityTlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SelectV2*#
_output_shapes
:џџџџџџџџџ*
T0	
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
С
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SliceSlice[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/beginclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	
Ј
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ц
]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ProdProd^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ј
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
с
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2GatherV2[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1ilinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesflinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
з
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast/xPack]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Prodalinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
П
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshapeSparseReshapeYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

olinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityIdentityblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Љ
glinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
§
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqualGreaterEqualolinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/Identityglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
ї
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/WhereWhereelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Й
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
с
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ReshapeReshape^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Whereflinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ј
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1GatherV2flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshapehlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2GatherV2olinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/Identity`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshapehlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ќ
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/IdentityIdentityhlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Д
rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Identityrlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
ж
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
и
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
и
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:

~linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
К
ulinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/CastCast~linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
У
wlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather+linear/linear_model/payment_type_xf/weightswlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ

linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*'
_output_shapes
:џџџџџџџџџ
и
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
З
plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique:1ulinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Й
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0

ў
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ShapeShapeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ж
llinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
И
nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
И
nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ъ
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_sliceStridedSlice^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shapellinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stacknlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
Ђ
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
о
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stackPack`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack/0flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice*
N*
_output_shapes
:*
T0
ф
]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/TileTileblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0


clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/zeros_like	ZerosLikeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sumSelect]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Tileclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/zeros_likeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ј
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast_1Cast[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
А
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ы
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1Slice_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast_1flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/beginelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ш
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shape_1ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum*
T0*
_output_shapes
:
А
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
И
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
Ь
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2Slice`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shape_1flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/beginelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
І
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
У
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concatConcatV2`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
к
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_2ReshapeXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
T0
И
mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_valueCastmlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/NotEqualNotEqualIdentity_29klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indicesWhereglinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Њ
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesGatherNdIdentity_29flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Е
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeShapeIdentity_29*
_output_shapes
:*
T0	*
out_type0	

\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
№
Zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_bucketsCast\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
т
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zeroCastUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
Х
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/LessLesselinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
м
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/GreaterEqualGreaterEqualelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets*#
_output_shapes
:џџџџџџџџџ*
T0	
П
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/out_of_range	LogicalOrSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Less[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
щ
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ShapeShapeelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
т
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/CastCastUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
О
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/default_valuesFillTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
Д
Wlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SelectV2SelectV2[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/out_of_range]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/default_valueselinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/values*#
_output_shapes
:џџџџџџџџџ*
T0	

[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Shape_1/CastCastjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
П
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_sliceStridedSlice[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Shape_1/Castblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stackdlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_1dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Є
Ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ц
Wlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/xPack\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_sliceYlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ъ
Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1CastWlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0
Ч
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshapeSparseReshapeflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ј
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape/IdentityIdentityWlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Б
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
А
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Э
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SliceSlice^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Я
`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ProdProdalinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slicealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Const*
_output_shapes
: *
T0	
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
э
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2GatherV2^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1llinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
р
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast/xPack`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Proddlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	
Ы
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeSparseReshape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqualGreaterEqualrlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/Identityjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
§
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/WhereWherehlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
М
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ъ
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ReshapeReshapealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Whereilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1GatherV2ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
­
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2GatherV2rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/Identityclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0

dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/IdentityIdentityklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
З
ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ї
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Identityulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
й
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
л
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
л
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Џ
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	
С
xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Щ
zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ь
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather.linear/linear_model/pickup_latitude_xf/weightszlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*'
_output_shapes
:џџџџџџџџџ
о
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
У
slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1|linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
М
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ShapeShapeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Й
olinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
љ
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_sliceStridedSlicealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shapeolinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackqlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ч
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stackPackclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack/0ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
э
`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/TileTileelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/zeros_like	ZerosLikeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ж
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sumSelect`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Tileflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/zeros_likeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ў
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast_1Cast^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
В
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
з
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1Sliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast_1ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginhlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
ю
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shape_1Shape[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum*
T0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Л
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
и
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2Sliceclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shape_1ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginhlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Љ
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Я
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concatConcatV2clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
у
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2Reshape[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sumblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Й
nlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
Ё
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/NotEqualNotEqualIdentity_26llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ќ
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/valuesGatherNdIdentity_26glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
Ж
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeShapeIdentity_26*
out_type0	*
_output_shapes
:*
T0	

]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
ђ
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
Ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
п
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Т
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
С
^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
­
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Ѕ
Zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
Xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ь
Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
њ
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
В
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Б
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
б
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
в
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ё
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
у
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
Я
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

slinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 

ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
џ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
э
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	

elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
И
vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ќ
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
к
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Д
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	
У
ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Ы
{linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
а
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/pickup_longitude_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ

linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*'
_output_shapes
:џџџџџџџџџ
р
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
Ч
tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Н
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ў
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
І
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ъ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
№
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
л
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
№
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum*
_output_shapes
:*
T0
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
М
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
м
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
г
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
ц
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
T0
З
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_valueCastllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/x*
_output_shapes
: *

DstT0	*

SrcT0

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/NotEqualNotEqualIdentity_22jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	
џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indicesWhereflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ј
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesGatherNdIdentity_22elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
Д
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeShapeIdentity_22*
T0	*
out_type0	*
_output_shapes
:

[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
ю
Ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_bucketsCast[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero/xConst*
dtype0*
_output_shapes
: *
value	B : 
р
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zeroCastTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
Т
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/LessLessdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
й
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/GreaterEqualGreaterEqualdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
М
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/out_of_range	LogicalOrRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/LessZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ч
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ShapeShapedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
р
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/CastCastTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast/x*
_output_shapes
: *

DstT0	*

SrcT0
Л
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/default_valuesFillSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ShapeRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	
А
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SelectV2SelectV2Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/out_of_range\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/default_valuesdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Shape_1/CastCastilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
К
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_sliceStridedSliceZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Shape_1/Castalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stackclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
Ѓ
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x/1Const*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
У
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/xPack[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_sliceXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1CastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0
У
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshapeSparseReshapeelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indicesilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
і
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape/IdentityIdentityVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SelectV2*#
_output_shapes
:џџџџџџџџџ*
T0	
А
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Щ
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SliceSlice]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/beginelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Њ
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ь
_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ProdProd`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
щ
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2GatherV2]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indiceshlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
н
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast/xPack_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Prodclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
Ч
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeSparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityIdentitydlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqualGreaterEqualqlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/Identityilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
ћ
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/WhereWhereglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Л
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ч
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ReshapeReshape`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Wherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1GatherV2hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshapejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2GatherV2qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/Identityblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshapejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	

clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/IdentityIdentityjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Ж
tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ђ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Identitytlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
и
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
к
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
к
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Њ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
П
wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Ч
ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ш
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather-linear/linear_model/trip_start_day_xf/weightsylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ

linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*'
_output_shapes
:џџџџџџџџџ
м
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
П
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique:1wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Л
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0


`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ShapeShaperlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
И
nlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
К
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
є
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_sliceStridedSlice`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shapenlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackplinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
Є
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ф
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stackPackblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack/0hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
ъ
_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/TileTiledlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/zeros_like	ZerosLikerlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
в
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sumSelect_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Tileelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/zeros_likerlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ќ
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast_1Cast]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Б
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
г
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1Slicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast_1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ь
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shape_1ShapeZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum*
_output_shapes
:*
T0
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
К
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
д
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shape_1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0
Ј
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ы
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concatConcatV2blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
р
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_2ReshapeZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sumalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
И
mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_valueCastmlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/NotEqualNotEqualIdentity_23klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indicesWhereglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Њ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesGatherNdIdentity_23flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Е
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeShapeIdentity_23*
T0	*
out_type0	*
_output_shapes
:

\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
№
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_bucketsCast\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
т
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zeroCastUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
Х
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/LessLesselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
м
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/GreaterEqualGreaterEqualelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets*#
_output_shapes
:џџџџџџџџџ*
T0	
П
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/out_of_range	LogicalOrSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Less[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
щ
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ShapeShapeelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
т
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/CastCastUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
О
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/default_valuesFillTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	
Д
Wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SelectV2SelectV2[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/out_of_range]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/default_valueselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Shape_1/CastCastjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
П
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_sliceStridedSlice[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Shape_1/Castblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stackdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_1dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Є
Ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ц
Wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/xPack\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_sliceYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ъ
Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1CastWlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0
Ч
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshapeSparseReshapeflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ј
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape/IdentityIdentityWlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Б
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
А
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Э
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SliceSlice^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Я
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ProdProdalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Const*
_output_shapes
: *
T0	
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
э
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2GatherV2^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
р
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast/xPack`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Proddlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
Ы
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeSparseReshape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityIdentityelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqualGreaterEqualrlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/Identityjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
§
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/WhereWherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
М
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
ъ
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ReshapeReshapealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Whereilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1GatherV2ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2GatherV2rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/Identityclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/IdentityIdentityklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
З
ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ї
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Identityulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
й
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
л
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
л
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Џ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	*
shrink_axis_mask*

begin_mask
С
xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Щ
zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ь
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather.linear/linear_model/trip_start_hour_xf/weightszlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*'
_output_shapes
:џџџџџџџџџ*
T0
о
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
У
slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1|linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique:1xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
М
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ShapeShapeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Й
olinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
љ
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_sliceStridedSlicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shapeolinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackqlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
ч
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stackPackclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack/0ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
э
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/TileTileelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/zeros_like	ZerosLikeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ж
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sumSelect`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Tileflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/zeros_likeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ў
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast_1Cast^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
з
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast_1ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginhlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
ю
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shape_1Shape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum*
_output_shapes
:*
T0
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Л
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
и
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2Sliceclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shape_1ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginhlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Љ
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Я
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concatConcatV2clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
у
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2Reshape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sumblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Й
nlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
Ё
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/NotEqualNotEqualIdentity_20llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ќ
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/valuesGatherNdIdentity_20glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Ж
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeShapeIdentity_20*
T0	*
out_type0	*
_output_shapes
:

]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
ђ
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
Ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
п
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Т
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
С
^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
­
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Ѕ
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x/1Const*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
Щ
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ь
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
њ
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SelectV2*#
_output_shapes
:џџџџџџџџџ*
T0	
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Б
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
б
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
в
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ё
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
у
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	
Я
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 

ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
џ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
э
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
И
vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
Ќ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
к
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Д
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask*

begin_mask
У
ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Ы
{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
а
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/trip_start_month_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*'
_output_shapes
:џџџџџџџџџ
р
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
Ч
tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique:1ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Н
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0


blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ў
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
І
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ъ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice*
_output_shapes
:*
T0*
N
№
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0


glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0

clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
л
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
№
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum*
T0*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
М
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
м
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
г
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
ц
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
Plinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasAddN]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_2elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_2elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_2*
T0*
N	*'
_output_shapes
:џџџџџџџџџ
Д
Wlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
А
Hlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sumBiasAddPlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasWlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
k
ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ж
strided_sliceStridedSliceReadVariableOpstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
N
	bias/tagsConst*
dtype0*
_output_shapes
: *
valueB
 Bbias
P
biasScalarSummary	bias/tagsstrided_slice*
T0*
_output_shapes
: 

,zero_fraction/total_size/Size/ReadVariableOpReadVariableOp&linear/linear_model/company_xf/weights*
dtype0*
_output_shapes
:	ђ
`
zero_fraction/total_size/SizeConst*
value
B	 Rђ*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp/linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes

:
*
dtype0
a
zero_fraction/total_size/Size_1Const*
value	B	 R
*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp0linear/linear_model/dropoff_longitude_xf/weights*
dtype0*
_output_shapes

:

a
zero_fraction/total_size/Size_2Const*
value	B	 R
*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp+linear/linear_model/payment_type_xf/weights*
dtype0*
_output_shapes
:	ђ
b
zero_fraction/total_size/Size_3Const*
value
B	 Rђ*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp.linear/linear_model/pickup_latitude_xf/weights*
dtype0*
_output_shapes

:

a
zero_fraction/total_size/Size_4Const*
value	B	 R
*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_5/ReadVariableOpReadVariableOp/linear/linear_model/pickup_longitude_xf/weights*
dtype0*
_output_shapes

:

a
zero_fraction/total_size/Size_5Const*
value	B	 R
*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_6/ReadVariableOpReadVariableOp-linear/linear_model/trip_start_day_xf/weights*
dtype0*
_output_shapes

:
a
zero_fraction/total_size/Size_6Const*
value	B	 R*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_7/ReadVariableOpReadVariableOp.linear/linear_model/trip_start_hour_xf/weights*
dtype0*
_output_shapes

:
a
zero_fraction/total_size/Size_7Const*
value	B	 R*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_8/ReadVariableOpReadVariableOp/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes

:
a
zero_fraction/total_size/Size_8Const*
_output_shapes
: *
value	B	 R*
dtype0	
і
zero_fraction/total_size/AddNAddNzero_fraction/total_size/Sizezero_fraction/total_size/Size_1zero_fraction/total_size/Size_2zero_fraction/total_size/Size_3zero_fraction/total_size/Size_4zero_fraction/total_size/Size_5zero_fraction/total_size/Size_6zero_fraction/total_size/Size_7zero_fraction/total_size/Size_8*
T0	*
N	*
_output_shapes
: 
`
zero_fraction/total_zero/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

zero_fraction/total_zero/EqualEqualzero_fraction/total_size/Sizezero_fraction/total_zero/Const*
T0	*
_output_shapes
: 

#zero_fraction/total_zero/zero_countIfzero_fraction/total_zero/Equal&linear/linear_model/company_xf/weightszero_fraction/total_size/Size*B
else_branch3R1
/zero_fraction_total_zero_zero_count_false_13390*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2*
Tcond0
*A
then_branch2R0
.zero_fraction_total_zero_zero_count_true_13389*
_output_shapes
: *
Tin
2	
~
,zero_fraction/total_zero/zero_count/IdentityIdentity#zero_fraction/total_zero/zero_count*
_output_shapes
: *
T0
b
 zero_fraction/total_zero/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_1Equalzero_fraction/total_size/Size_1 zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
Ѕ
%zero_fraction/total_zero/zero_count_1If zero_fraction/total_zero/Equal_1/linear/linear_model/dropoff_latitude_xf/weightszero_fraction/total_size/Size_1*D
else_branch5R3
1zero_fraction_total_zero_zero_count_1_false_13433*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2*
Tcond0
*C
then_branch4R2
0zero_fraction_total_zero_zero_count_1_true_13432*
Tin
2	*
_output_shapes
: 

.zero_fraction/total_zero/zero_count_1/IdentityIdentity%zero_fraction/total_zero/zero_count_1*
_output_shapes
: *
T0
b
 zero_fraction/total_zero/Const_2Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_2Equalzero_fraction/total_size/Size_2 zero_fraction/total_zero/Const_2*
T0	*
_output_shapes
: 
І
%zero_fraction/total_zero/zero_count_2If zero_fraction/total_zero/Equal_20linear/linear_model/dropoff_longitude_xf/weightszero_fraction/total_size/Size_2*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2*C
then_branch4R2
0zero_fraction_total_zero_zero_count_2_true_13475*
Tcond0
*
_output_shapes
: *
Tin
2	*D
else_branch5R3
1zero_fraction_total_zero_zero_count_2_false_13476

.zero_fraction/total_zero/zero_count_2/IdentityIdentity%zero_fraction/total_zero/zero_count_2*
_output_shapes
: *
T0
b
 zero_fraction/total_zero/Const_3Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_3Equalzero_fraction/total_size/Size_3 zero_fraction/total_zero/Const_3*
_output_shapes
: *
T0	
Ё
%zero_fraction/total_zero/zero_count_3If zero_fraction/total_zero/Equal_3+linear/linear_model/payment_type_xf/weightszero_fraction/total_size/Size_3*C
then_branch4R2
0zero_fraction_total_zero_zero_count_3_true_13518*
Tcond0
*
Tin
2	*
_output_shapes
: *D
else_branch5R3
1zero_fraction_total_zero_zero_count_3_false_13519*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2

.zero_fraction/total_zero/zero_count_3/IdentityIdentity%zero_fraction/total_zero/zero_count_3*
_output_shapes
: *
T0
b
 zero_fraction/total_zero/Const_4Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_4Equalzero_fraction/total_size/Size_4 zero_fraction/total_zero/Const_4*
_output_shapes
: *
T0	
Є
%zero_fraction/total_zero/zero_count_4If zero_fraction/total_zero/Equal_4.linear/linear_model/pickup_latitude_xf/weightszero_fraction/total_size/Size_4*C
then_branch4R2
0zero_fraction_total_zero_zero_count_4_true_13561*
Tcond0
*
_output_shapes
: *
Tin
2	*D
else_branch5R3
1zero_fraction_total_zero_zero_count_4_false_13562*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2

.zero_fraction/total_zero/zero_count_4/IdentityIdentity%zero_fraction/total_zero/zero_count_4*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_5Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_5Equalzero_fraction/total_size/Size_5 zero_fraction/total_zero/Const_5*
_output_shapes
: *
T0	
Ѕ
%zero_fraction/total_zero/zero_count_5If zero_fraction/total_zero/Equal_5/linear/linear_model/pickup_longitude_xf/weightszero_fraction/total_size/Size_5*
_lower_using_switch_merge(*
Tout
2*
Tcond0
*C
then_branch4R2
0zero_fraction_total_zero_zero_count_5_true_13604*
_output_shapes
: *
Tin
2	*D
else_branch5R3
1zero_fraction_total_zero_zero_count_5_false_13605*
output_shapes
: 

.zero_fraction/total_zero/zero_count_5/IdentityIdentity%zero_fraction/total_zero/zero_count_5*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_6Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_6Equalzero_fraction/total_size/Size_6 zero_fraction/total_zero/Const_6*
_output_shapes
: *
T0	
Ѓ
%zero_fraction/total_zero/zero_count_6If zero_fraction/total_zero/Equal_6-linear/linear_model/trip_start_day_xf/weightszero_fraction/total_size/Size_6*D
else_branch5R3
1zero_fraction_total_zero_zero_count_6_false_13648*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2*
Tcond0
*C
then_branch4R2
0zero_fraction_total_zero_zero_count_6_true_13647*
_output_shapes
: *
Tin
2	

.zero_fraction/total_zero/zero_count_6/IdentityIdentity%zero_fraction/total_zero/zero_count_6*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_7Const*
_output_shapes
: *
value	B	 R *
dtype0	

 zero_fraction/total_zero/Equal_7Equalzero_fraction/total_size/Size_7 zero_fraction/total_zero/Const_7*
_output_shapes
: *
T0	
Є
%zero_fraction/total_zero/zero_count_7If zero_fraction/total_zero/Equal_7.linear/linear_model/trip_start_hour_xf/weightszero_fraction/total_size/Size_7*D
else_branch5R3
1zero_fraction_total_zero_zero_count_7_false_13691*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2*C
then_branch4R2
0zero_fraction_total_zero_zero_count_7_true_13690*
Tcond0
*
_output_shapes
: *
Tin
2	

.zero_fraction/total_zero/zero_count_7/IdentityIdentity%zero_fraction/total_zero/zero_count_7*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_8Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_8Equalzero_fraction/total_size/Size_8 zero_fraction/total_zero/Const_8*
T0	*
_output_shapes
: 
Ѕ
%zero_fraction/total_zero/zero_count_8If zero_fraction/total_zero/Equal_8/linear/linear_model/trip_start_month_xf/weightszero_fraction/total_size/Size_8*
_output_shapes
: *
Tin
2	*D
else_branch5R3
1zero_fraction_total_zero_zero_count_8_false_13734*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2*C
then_branch4R2
0zero_fraction_total_zero_zero_count_8_true_13733*
Tcond0


.zero_fraction/total_zero/zero_count_8/IdentityIdentity%zero_fraction/total_zero/zero_count_8*
_output_shapes
: *
T0
§
zero_fraction/total_zero/AddNAddN,zero_fraction/total_zero/zero_count/Identity.zero_fraction/total_zero/zero_count_1/Identity.zero_fraction/total_zero/zero_count_2/Identity.zero_fraction/total_zero/zero_count_3/Identity.zero_fraction/total_zero/zero_count_4/Identity.zero_fraction/total_zero/zero_count_5/Identity.zero_fraction/total_zero/zero_count_6/Identity.zero_fraction/total_zero/zero_count_7/Identity.zero_fraction/total_zero/zero_count_8/Identity*
N	*
_output_shapes
: *
T0
y
"zero_fraction/compute/float32_sizeCastzero_fraction/total_size/AddN*

SrcT0	*
_output_shapes
: *

DstT0

zero_fraction/compute/truedivRealDivzero_fraction/total_zero/AddN"zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
n
"zero_fraction/zero_fraction_or_nanIdentityzero_fraction/compute/truediv*
T0*
_output_shapes
: 
v
fraction_of_zero_weights/tagsConst*)
value B Bfraction_of_zero_weights*
dtype0*
_output_shapes
: 

fraction_of_zero_weightsScalarSummaryfraction_of_zero_weights/tags"zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 

zero_fraction_1/SizeSizeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
_output_shapes
: *
T0*
out_type0	
a
zero_fraction_1/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
z
zero_fraction_1/LessEqual	LessEqualzero_fraction_1/Sizezero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 
ы
zero_fraction_1/condStatelessIfzero_fraction_1/LessEqualHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*
Tcond0
*2
then_branch#R!
zero_fraction_1_cond_true_13783*
_output_shapes
: *
Tin
2*3
else_branch$R"
 zero_fraction_1_cond_false_13784
`
zero_fraction_1/cond/IdentityIdentityzero_fraction_1/cond*
_output_shapes
: *
T0	

&zero_fraction_1/counts_to_fraction/subSubzero_fraction_1/Sizezero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 

'zero_fraction_1/counts_to_fraction/CastCast&zero_fraction_1/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
w
)zero_fraction_1/counts_to_fraction/Cast_1Castzero_fraction_1/Size*
_output_shapes
: *

DstT0*

SrcT0	
Њ
*zero_fraction_1/counts_to_fraction/truedivRealDiv'zero_fraction_1/counts_to_fraction/Cast)zero_fraction_1/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
q
zero_fraction_1/fractionIdentity*zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 

#linear/fraction_of_zero_values/tagsConst*/
value&B$ Blinear/fraction_of_zero_values*
dtype0*
_output_shapes
: 

linear/fraction_of_zero_valuesScalarSummary#linear/fraction_of_zero_values/tagszero_fraction_1/fraction*
T0*
_output_shapes
: 
g
linear/activation/tagConst*"
valueB Blinear/activation*
dtype0*
_output_shapes
: 

linear/activationHistogramSummarylinear/activation/tagHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
_output_shapes
: 

addAddV2dnn/logits/BiasAddHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*'
_output_shapes
:џџџџџџџџџ*
T0
D
head/logits/ShapeShapeadd*
T0*
_output_shapes
:
g
%head/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
[
head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:џџџџџџџџџ
_
head/predictions/zeros_like	ZerosLikeadd*'
_output_shapes
:џџџџџџџџџ*
T0
q
&head/predictions/two_class_logits/axisConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
В
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeadd&head/predictions/two_class_logits/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:џџџџџџџџџ
o
$head/predictions/class_ids/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:џџџџџџџџџ
j
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*'
_output_shapes
:џџџџџџџџџ*
T0	
I
head/predictions/ShapeShapeadd*
T0*
_output_shapes
:
n
$head/predictions/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
p
&head/predictions/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
p
&head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
^
head/predictions/range/startConst*
_output_shapes
: *
value	B : *
dtype0
^
head/predictions/range/limitConst*
value	B :*
dtype0*
_output_shapes
: 
^
head/predictions/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
_output_shapes

:*
T0
c
!head/predictions/Tile/multiples/1Const*
_output_shapes
: *
value	B :*
dtype0

head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
T0*
N*
_output_shapes
:

head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*'
_output_shapes
:џџџџџџџџџ*
T0
K
head/predictions/Shape_1Shapeadd*
_output_shapes
:*
T0
p
&head/predictions/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(head/predictions/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(head/predictions/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
`
head/predictions/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
`
head/predictions/range_1/limitConst*
value	B :*
dtype0*
_output_shapes
: 
`
head/predictions/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

head/predictions/range_1Rangehead/predictions/range_1/starthead/predictions/range_1/limithead/predictions/range_1/delta*
_output_shapes
:
d
head/predictions/AsStringAsStringhead/predictions/range_1*
T0*
_output_shapes
:
c
!head/predictions/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 

head/predictions/ExpandDims_2
ExpandDimshead/predictions/AsString!head/predictions/ExpandDims_2/dim*
_output_shapes

:*
T0
e
#head/predictions/Tile_1/multiples/1Const*
dtype0*
_output_shapes
: *
value	B :

!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
T0*
N*
_output_shapes
:

head/predictions/Tile_1Tilehead/predictions/ExpandDims_2!head/predictions/Tile_1/multiples*'
_output_shapes
:џџџџџџџџџ*
T0
K
head/losses/logits/ShapeShapeadd*
T0*
_output_shapes
:
n
,head/losses/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
^
Vhead/losses/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Ghead/losses/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
n
,head/losses/labels/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
h
-head/losses/labels/assert_rank_at_least/ShapeShapeIdentity_35*
T0	*
_output_shapes
:
^
Vhead/losses/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Ghead/losses/labels/assert_rank_at_least/static_checks_determined_all_okNoOp

head/losses/labels/ShapeShapeaddH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
T0
К
&head/losses/labels/strided_slice/stackConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
Х
(head/losses/labels/strided_slice/stack_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
М
(head/losses/labels/strided_slice/stack_2ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:

 head/losses/labels/strided_sliceStridedSlicehead/losses/labels/Shape&head/losses/labels/strided_slice/stack(head/losses/labels/strided_slice/stack_1(head/losses/labels/strided_slice/stack_2*
Index0*
T0*

begin_mask*
_output_shapes
:
Ж
"head/losses/labels/concat/values_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
Њ
head/losses/labels/concat/axisConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
value	B : *
dtype0*
_output_shapes
: 
Й
head/losses/labels/concatConcatV2 head/losses/labels/strided_slice"head/losses/labels/concat/values_1head/losses/labels/concat/axis*
T0*
N*
_output_shapes
:

head/losses/labels/Shape_1ShapeIdentity_35H^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
T0	

%head/losses/labels/assert_equal/EqualEqualhead/losses/labels/concathead/losses/labels/Shape_1*
T0*
_output_shapes
:
Й
%head/losses/labels/assert_equal/ConstConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:

#head/losses/labels/assert_equal/AllAll%head/losses/labels/assert_equal/Equal%head/losses/labels/assert_equal/Const*
_output_shapes
: 
Ю
,head/losses/labels/assert_equal/Assert/ConstConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
Ч
.head/losses/labels/assert_equal/Assert/Const_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
valueB Blabels_shape: *
dtype0
ж
4head/losses/labels/assert_equal/Assert/Assert/data_0ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
Э
4head/losses/labels/assert_equal/Assert/Assert/data_2ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
valueB Blabels_shape: *
dtype0

-head/losses/labels/assert_equal/Assert/AssertAssert#head/losses/labels/assert_equal/All4head/losses/labels/assert_equal/Assert/Assert/data_0head/losses/labels/concat4head/losses/labels/assert_equal/Assert/Assert/data_2head/losses/labels/Shape_1*
T
2
з
head/losses/labelsIdentityIdentity_35.^head/losses/labels/assert_equal/Assert/AssertH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*'
_output_shapes
:џџџџџџџџџ
p
head/losses/ToFloatCasthead/losses/labels*

SrcT0	*'
_output_shapes
:џџџџџџџџџ*

DstT0
h
#head/losses/check_label_range/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
В
9head/losses/check_label_range/assert_less_equal/LessEqual	LessEqualhead/losses/ToFloat#head/losses/check_label_range/Const*'
_output_shapes
:џџџџџџџџџ*
T0

5head/losses/check_label_range/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Ф
3head/losses/check_label_range/assert_less_equal/AllAll9head/losses/check_label_range/assert_less_equal/LessEqual5head/losses/check_label_range/assert_less_equal/Const*
_output_shapes
: 

<head/losses/check_label_range/assert_less_equal/Assert/ConstConst*
dtype0*
_output_shapes
: *0
value'B% BLabels must be <= n_classes - 1
Ц
>head/losses/check_label_range/assert_less_equal/Assert/Const_1Const*X
valueOBM BGCondition x <= y did not hold element-wise:x (head/losses/ToFloat:0) = *
dtype0*
_output_shapes
: 
Ћ
>head/losses/check_label_range/assert_less_equal/Assert/Const_2Const*=
value4B2 B,y (head/losses/check_label_range/Const:0) = *
dtype0*
_output_shapes
: 
­
Bhead/losses/check_label_range/assert_less_equal/Assert/AssertGuardIf3head/losses/check_label_range/assert_less_equal/All3head/losses/check_label_range/assert_less_equal/Allhead/losses/ToFloat#head/losses/check_label_range/Const*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*`
then_branchQRO
Mhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_true_13882*
Tcond0
*
Tin
2
*
_output_shapes
: *a
else_branchRRP
Nhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_false_13883
М
Khead/losses/check_label_range/assert_less_equal/Assert/AssertGuard/IdentityIdentityBhead/losses/check_label_range/assert_less_equal/Assert/AssertGuard*
_output_shapes
: *
T0

|
7head/losses/check_label_range/assert_non_negative/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
к
Mhead/losses/check_label_range/assert_non_negative/assert_less_equal/LessEqual	LessEqual7head/losses/check_label_range/assert_non_negative/Consthead/losses/ToFloat*
T0*'
_output_shapes
:џџџџџџџџџ

Ihead/losses/check_label_range/assert_non_negative/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

Ghead/losses/check_label_range/assert_non_negative/assert_less_equal/AllAllMhead/losses/check_label_range/assert_non_negative/assert_less_equal/LessEqualIhead/losses/check_label_range/assert_non_negative/assert_less_equal/Const*
_output_shapes
: 
Є
Phead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/ConstConst*
dtype0*
_output_shapes
: *$
valueB BLabels must be >= 0
О
Rhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0
Џ
Rhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/Const_2Const*-
value$B" Bx (head/losses/ToFloat:0) = *
dtype0*
_output_shapes
: 
ы
Vhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuardIfGhead/losses/check_label_range/assert_non_negative/assert_less_equal/AllGhead/losses/check_label_range/assert_non_negative/assert_less_equal/Allhead/losses/ToFloat*
Tcond0
*t
then_brancheRc
ahead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_13906*
Tin
2
*
_output_shapes
: *u
else_branchfRd
bhead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_13907*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2

ф
_head/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityVhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
Љ
&head/losses/check_label_range/IdentityIdentityhead/losses/ToFloatL^head/losses/check_label_range/assert_less_equal/Assert/AssertGuard/Identity`^head/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
h
$head/losses/logistic_loss/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ

&head/losses/logistic_loss/GreaterEqualGreaterEqualadd$head/losses/logistic_loss/zeros_like*'
_output_shapes
:џџџџџџџџџ*
T0
Џ
 head/losses/logistic_loss/SelectSelect&head/losses/logistic_loss/GreaterEqualadd$head/losses/logistic_loss/zeros_like*'
_output_shapes
:џџџџџџџџџ*
T0
[
head/losses/logistic_loss/NegNegadd*
T0*'
_output_shapes
:џџџџџџџџџ
Њ
"head/losses/logistic_loss/Select_1Select&head/losses/logistic_loss/GreaterEqualhead/losses/logistic_loss/Negadd*'
_output_shapes
:џџџџџџџџџ*
T0

head/losses/logistic_loss/mulMuladd&head/losses/check_label_range/Identity*'
_output_shapes
:џџџџџџџџџ*
T0

head/losses/logistic_loss/subSub head/losses/logistic_loss/Selecthead/losses/logistic_loss/mul*
T0*'
_output_shapes
:џџџџџџџџџ
z
head/losses/logistic_loss/ExpExp"head/losses/logistic_loss/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ
y
head/losses/logistic_loss/Log1pLog1phead/losses/logistic_loss/Exp*'
_output_shapes
:џџџџџџџџџ*
T0

head/losses/logistic_lossAddhead/losses/logistic_loss/subhead/losses/logistic_loss/Log1p*'
_output_shapes
:џџџџџџџџџ*
T0
e
 head/losses/weighted_loss/Cast/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

Nhead/losses/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Mhead/losses/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

Mhead/losses/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapehead/losses/logistic_loss*
T0*
_output_shapes
:

Lhead/losses/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
d
\head/losses/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
у
;head/losses/weighted_loss/broadcast_weights/ones_like/ShapeShapehead/losses/logistic_loss]^head/losses/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
п
;head/losses/weighted_loss/broadcast_weights/ones_like/ConstConst]^head/losses/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
щ
5head/losses/weighted_loss/broadcast_weights/ones_likeFill;head/losses/weighted_loss/broadcast_weights/ones_like/Shape;head/losses/weighted_loss/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Н
+head/losses/weighted_loss/broadcast_weightsMul head/losses/weighted_loss/Cast/x5head/losses/weighted_loss/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

head/losses/weighted_loss/MulMulhead/losses/logistic_loss+head/losses/weighted_loss/broadcast_weights*
T0*'
_output_shapes
:џџџџџџџџџ
p
head/losses/weighted_loss/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

head/losses/weighted_loss/SumSumhead/losses/weighted_loss/Mulhead/losses/weighted_loss/Const*
_output_shapes
: *
T0
n
&head/losses/weighted_loss/num_elementsSizehead/losses/weighted_loss/Mul*
T0*
_output_shapes
: 

+head/losses/weighted_loss/num_elements/CastCast&head/losses/weighted_loss/num_elements*

SrcT0*
_output_shapes
: *

DstT0
d
!head/losses/weighted_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 

head/losses/weighted_loss/Sum_1Sumhead/losses/weighted_loss/Sum!head/losses/weighted_loss/Const_1*
_output_shapes
: *
T0

head/losses/weighted_loss/valueDivNoNanhead/losses/weighted_loss/Sum_1+head/losses/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0

$head/metrics/total/Initializer/zerosConst*
valueB
 *    *%
_class
loc:@head/metrics/total*
dtype0*
_output_shapes
: 

head/metrics/totalVarHandleOp*
shape: *#
shared_namehead/metrics/total*%
_class
loc:@head/metrics/total*
dtype0*
_output_shapes
: 
u
3head/metrics/total/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total*
_output_shapes
: 
t
head/metrics/total/AssignAssignVariableOphead/metrics/total$head/metrics/total/Initializer/zeros*
dtype0
q
&head/metrics/total/Read/ReadVariableOpReadVariableOphead/metrics/total*
dtype0*
_output_shapes
: 

$head/metrics/count/Initializer/zerosConst*
valueB
 *    *%
_class
loc:@head/metrics/count*
dtype0*
_output_shapes
: 

head/metrics/countVarHandleOp*%
_class
loc:@head/metrics/count*
dtype0*
_output_shapes
: *
shape: *#
shared_namehead/metrics/count
u
3head/metrics/count/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count*
_output_shapes
: 
t
head/metrics/count/AssignAssignVariableOphead/metrics/count$head/metrics/count/Initializer/zeros*
dtype0
q
&head/metrics/count/Read/ReadVariableOpReadVariableOphead/metrics/count*
dtype0*
_output_shapes
: 

&head/metrics/total_1/Initializer/zerosConst*
valueB
 *    *'
_class
loc:@head/metrics/total_1*
dtype0*
_output_shapes
: 
Ѕ
head/metrics/total_1VarHandleOp*%
shared_namehead/metrics/total_1*'
_class
loc:@head/metrics/total_1*
dtype0*
_output_shapes
: *
shape: 
y
5head/metrics/total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_1*
_output_shapes
: 
z
head/metrics/total_1/AssignAssignVariableOphead/metrics/total_1&head/metrics/total_1/Initializer/zeros*
dtype0
u
(head/metrics/total_1/Read/ReadVariableOpReadVariableOphead/metrics/total_1*
dtype0*
_output_shapes
: 

&head/metrics/count_1/Initializer/zerosConst*
valueB
 *    *'
_class
loc:@head/metrics/count_1*
dtype0*
_output_shapes
: 
Ѕ
head/metrics/count_1VarHandleOp*
dtype0*
_output_shapes
: *
shape: *%
shared_namehead/metrics/count_1*'
_class
loc:@head/metrics/count_1
y
5head/metrics/count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_1*
_output_shapes
: 
z
head/metrics/count_1/AssignAssignVariableOphead/metrics/count_1&head/metrics/count_1/Initializer/zeros*
dtype0
u
(head/metrics/count_1/Read/ReadVariableOpReadVariableOphead/metrics/count_1*
dtype0*
_output_shapes
: 
Њ
-head/metrics/true_positives/Initializer/zerosConst*
valueB*    *.
_class$
" loc:@head/metrics/true_positives*
dtype0*
_output_shapes
:
О
head/metrics/true_positivesVarHandleOp*,
shared_namehead/metrics/true_positives*.
_class$
" loc:@head/metrics/true_positives*
dtype0*
_output_shapes
: *
shape:

<head/metrics/true_positives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives*
_output_shapes
: 

"head/metrics/true_positives/AssignAssignVariableOphead/metrics/true_positives-head/metrics/true_positives/Initializer/zeros*
dtype0

/head/metrics/true_positives/Read/ReadVariableOpReadVariableOphead/metrics/true_positives*
dtype0*
_output_shapes
:
Ќ
.head/metrics/false_positives/Initializer/zerosConst*
valueB*    */
_class%
#!loc:@head/metrics/false_positives*
dtype0*
_output_shapes
:
С
head/metrics/false_positivesVarHandleOp*-
shared_namehead/metrics/false_positives*/
_class%
#!loc:@head/metrics/false_positives*
dtype0*
_output_shapes
: *
shape:

=head/metrics/false_positives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_positives*
_output_shapes
: 

#head/metrics/false_positives/AssignAssignVariableOphead/metrics/false_positives.head/metrics/false_positives/Initializer/zeros*
dtype0

0head/metrics/false_positives/Read/ReadVariableOpReadVariableOphead/metrics/false_positives*
dtype0*
_output_shapes
:
Ў
/head/metrics/true_positives_1/Initializer/zerosConst*
valueB*    *0
_class&
$"loc:@head/metrics/true_positives_1*
dtype0*
_output_shapes
:
Ф
head/metrics/true_positives_1VarHandleOp*.
shared_namehead/metrics/true_positives_1*0
_class&
$"loc:@head/metrics/true_positives_1*
dtype0*
_output_shapes
: *
shape:

>head/metrics/true_positives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives_1*
_output_shapes
: 

$head/metrics/true_positives_1/AssignAssignVariableOphead/metrics/true_positives_1/head/metrics/true_positives_1/Initializer/zeros*
dtype0

1head/metrics/true_positives_1/Read/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
dtype0*
_output_shapes
:
Ќ
.head/metrics/false_negatives/Initializer/zerosConst*
valueB*    */
_class%
#!loc:@head/metrics/false_negatives*
dtype0*
_output_shapes
:
С
head/metrics/false_negativesVarHandleOp*
shape:*-
shared_namehead/metrics/false_negatives*/
_class%
#!loc:@head/metrics/false_negatives*
dtype0*
_output_shapes
: 

=head/metrics/false_negatives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_negatives*
_output_shapes
: 

#head/metrics/false_negatives/AssignAssignVariableOphead/metrics/false_negatives.head/metrics/false_negatives/Initializer/zeros*
dtype0

0head/metrics/false_negatives/Read/ReadVariableOpReadVariableOphead/metrics/false_negatives*
dtype0*
_output_shapes
:

&head/metrics/total_2/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *'
_class
loc:@head/metrics/total_2
Ѕ
head/metrics/total_2VarHandleOp*%
shared_namehead/metrics/total_2*'
_class
loc:@head/metrics/total_2*
dtype0*
_output_shapes
: *
shape: 
y
5head/metrics/total_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_2*
_output_shapes
: 
z
head/metrics/total_2/AssignAssignVariableOphead/metrics/total_2&head/metrics/total_2/Initializer/zeros*
dtype0
u
(head/metrics/total_2/Read/ReadVariableOpReadVariableOphead/metrics/total_2*
dtype0*
_output_shapes
: 

&head/metrics/count_2/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *'
_class
loc:@head/metrics/count_2*
dtype0
Ѕ
head/metrics/count_2VarHandleOp*'
_class
loc:@head/metrics/count_2*
dtype0*
_output_shapes
: *
shape: *%
shared_namehead/metrics/count_2
y
5head/metrics/count_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_2*
_output_shapes
: 
z
head/metrics/count_2/AssignAssignVariableOphead/metrics/count_2&head/metrics/count_2/Initializer/zeros*
dtype0
u
(head/metrics/count_2/Read/ReadVariableOpReadVariableOphead/metrics/count_2*
dtype0*
_output_shapes
: 

&head/metrics/total_3/Initializer/zerosConst*
valueB
 *    *'
_class
loc:@head/metrics/total_3*
dtype0*
_output_shapes
: 
Ѕ
head/metrics/total_3VarHandleOp*
shape: *%
shared_namehead/metrics/total_3*'
_class
loc:@head/metrics/total_3*
dtype0*
_output_shapes
: 
y
5head/metrics/total_3/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_3*
_output_shapes
: 
z
head/metrics/total_3/AssignAssignVariableOphead/metrics/total_3&head/metrics/total_3/Initializer/zeros*
dtype0
u
(head/metrics/total_3/Read/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0

&head/metrics/count_3/Initializer/zerosConst*
valueB
 *    *'
_class
loc:@head/metrics/count_3*
dtype0*
_output_shapes
: 
Ѕ
head/metrics/count_3VarHandleOp*
shape: *%
shared_namehead/metrics/count_3*'
_class
loc:@head/metrics/count_3*
dtype0*
_output_shapes
: 
y
5head/metrics/count_3/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_3*
_output_shapes
: 
z
head/metrics/count_3/AssignAssignVariableOphead/metrics/count_3&head/metrics/count_3/Initializer/zeros*
dtype0
u
(head/metrics/count_3/Read/ReadVariableOpReadVariableOphead/metrics/count_3*
dtype0*
_output_shapes
: 

&head/metrics/total_4/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *'
_class
loc:@head/metrics/total_4*
dtype0
Ѕ
head/metrics/total_4VarHandleOp*
shape: *%
shared_namehead/metrics/total_4*'
_class
loc:@head/metrics/total_4*
dtype0*
_output_shapes
: 
y
5head/metrics/total_4/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_4*
_output_shapes
: 
z
head/metrics/total_4/AssignAssignVariableOphead/metrics/total_4&head/metrics/total_4/Initializer/zeros*
dtype0
u
(head/metrics/total_4/Read/ReadVariableOpReadVariableOphead/metrics/total_4*
_output_shapes
: *
dtype0

&head/metrics/count_4/Initializer/zerosConst*
valueB
 *    *'
_class
loc:@head/metrics/count_4*
dtype0*
_output_shapes
: 
Ѕ
head/metrics/count_4VarHandleOp*
_output_shapes
: *
shape: *%
shared_namehead/metrics/count_4*'
_class
loc:@head/metrics/count_4*
dtype0
y
5head/metrics/count_4/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_4*
_output_shapes
: 
z
head/metrics/count_4/AssignAssignVariableOphead/metrics/count_4&head/metrics/count_4/Initializer/zeros*
dtype0
u
(head/metrics/count_4/Read/ReadVariableOpReadVariableOphead/metrics/count_4*
dtype0*
_output_shapes
: 
А
/head/metrics/true_positives_2/Initializer/zerosConst*
valueBШ*    *0
_class&
$"loc:@head/metrics/true_positives_2*
dtype0*
_output_shapes	
:Ш
Х
head/metrics/true_positives_2VarHandleOp*
dtype0*
_output_shapes
: *
shape:Ш*.
shared_namehead/metrics/true_positives_2*0
_class&
$"loc:@head/metrics/true_positives_2

>head/metrics/true_positives_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives_2*
_output_shapes
: 

$head/metrics/true_positives_2/AssignAssignVariableOphead/metrics/true_positives_2/head/metrics/true_positives_2/Initializer/zeros*
dtype0

1head/metrics/true_positives_2/Read/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
dtype0*
_output_shapes	
:Ш
Ќ
-head/metrics/true_negatives/Initializer/zerosConst*
valueBШ*    *.
_class$
" loc:@head/metrics/true_negatives*
dtype0*
_output_shapes	
:Ш
П
head/metrics/true_negativesVarHandleOp*
shape:Ш*,
shared_namehead/metrics/true_negatives*.
_class$
" loc:@head/metrics/true_negatives*
dtype0*
_output_shapes
: 

<head/metrics/true_negatives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_negatives*
_output_shapes
: 

"head/metrics/true_negatives/AssignAssignVariableOphead/metrics/true_negatives-head/metrics/true_negatives/Initializer/zeros*
dtype0

/head/metrics/true_negatives/Read/ReadVariableOpReadVariableOphead/metrics/true_negatives*
dtype0*
_output_shapes	
:Ш
В
0head/metrics/false_positives_1/Initializer/zerosConst*
_output_shapes	
:Ш*
valueBШ*    *1
_class'
%#loc:@head/metrics/false_positives_1*
dtype0
Ш
head/metrics/false_positives_1VarHandleOp*1
_class'
%#loc:@head/metrics/false_positives_1*
dtype0*
_output_shapes
: *
shape:Ш*/
shared_name head/metrics/false_positives_1

?head/metrics/false_positives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_positives_1*
_output_shapes
: 

%head/metrics/false_positives_1/AssignAssignVariableOphead/metrics/false_positives_10head/metrics/false_positives_1/Initializer/zeros*
dtype0

2head/metrics/false_positives_1/Read/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
dtype0*
_output_shapes	
:Ш
В
0head/metrics/false_negatives_1/Initializer/zerosConst*
valueBШ*    *1
_class'
%#loc:@head/metrics/false_negatives_1*
dtype0*
_output_shapes	
:Ш
Ш
head/metrics/false_negatives_1VarHandleOp*1
_class'
%#loc:@head/metrics/false_negatives_1*
dtype0*
_output_shapes
: *
shape:Ш*/
shared_name head/metrics/false_negatives_1

?head/metrics/false_negatives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_negatives_1*
_output_shapes
: 

%head/metrics/false_negatives_1/AssignAssignVariableOphead/metrics/false_negatives_10head/metrics/false_negatives_1/Initializer/zeros*
dtype0

2head/metrics/false_negatives_1/Read/ReadVariableOpReadVariableOphead/metrics/false_negatives_1*
dtype0*
_output_shapes	
:Ш
А
/head/metrics/true_positives_3/Initializer/zerosConst*
valueBШ*    *0
_class&
$"loc:@head/metrics/true_positives_3*
dtype0*
_output_shapes	
:Ш
Х
head/metrics/true_positives_3VarHandleOp*.
shared_namehead/metrics/true_positives_3*0
_class&
$"loc:@head/metrics/true_positives_3*
dtype0*
_output_shapes
: *
shape:Ш

>head/metrics/true_positives_3/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives_3*
_output_shapes
: 

$head/metrics/true_positives_3/AssignAssignVariableOphead/metrics/true_positives_3/head/metrics/true_positives_3/Initializer/zeros*
dtype0

1head/metrics/true_positives_3/Read/ReadVariableOpReadVariableOphead/metrics/true_positives_3*
dtype0*
_output_shapes	
:Ш
А
/head/metrics/true_negatives_1/Initializer/zerosConst*
valueBШ*    *0
_class&
$"loc:@head/metrics/true_negatives_1*
dtype0*
_output_shapes	
:Ш
Х
head/metrics/true_negatives_1VarHandleOp*.
shared_namehead/metrics/true_negatives_1*0
_class&
$"loc:@head/metrics/true_negatives_1*
dtype0*
_output_shapes
: *
shape:Ш

>head/metrics/true_negatives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_negatives_1*
_output_shapes
: 

$head/metrics/true_negatives_1/AssignAssignVariableOphead/metrics/true_negatives_1/head/metrics/true_negatives_1/Initializer/zeros*
dtype0

1head/metrics/true_negatives_1/Read/ReadVariableOpReadVariableOphead/metrics/true_negatives_1*
dtype0*
_output_shapes	
:Ш
В
0head/metrics/false_positives_2/Initializer/zerosConst*
valueBШ*    *1
_class'
%#loc:@head/metrics/false_positives_2*
dtype0*
_output_shapes	
:Ш
Ш
head/metrics/false_positives_2VarHandleOp*/
shared_name head/metrics/false_positives_2*1
_class'
%#loc:@head/metrics/false_positives_2*
dtype0*
_output_shapes
: *
shape:Ш

?head/metrics/false_positives_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_positives_2*
_output_shapes
: 

%head/metrics/false_positives_2/AssignAssignVariableOphead/metrics/false_positives_20head/metrics/false_positives_2/Initializer/zeros*
dtype0

2head/metrics/false_positives_2/Read/ReadVariableOpReadVariableOphead/metrics/false_positives_2*
dtype0*
_output_shapes	
:Ш
В
0head/metrics/false_negatives_2/Initializer/zerosConst*
valueBШ*    *1
_class'
%#loc:@head/metrics/false_negatives_2*
dtype0*
_output_shapes	
:Ш
Ш
head/metrics/false_negatives_2VarHandleOp*
_output_shapes
: *
shape:Ш*/
shared_name head/metrics/false_negatives_2*1
_class'
%#loc:@head/metrics/false_negatives_2*
dtype0

?head/metrics/false_negatives_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_negatives_2*
_output_shapes
: 

%head/metrics/false_negatives_2/AssignAssignVariableOphead/metrics/false_negatives_20head/metrics/false_negatives_2/Initializer/zeros*
dtype0

2head/metrics/false_negatives_2/Read/ReadVariableOpReadVariableOphead/metrics/false_negatives_2*
dtype0*
_output_shapes	
:Ш
A
logits_1/ShapeShapeadd*
T0*
_output_shapes
:
d
"logits_1/assert_rank_at_least/rankConst*
_output_shapes
: *
value	B :*
dtype0
T
Llogits_1/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
E
=logits_1/assert_rank_at_least/static_checks_determined_all_okNoOp
V
predictions/logisticSigmoidadd*'
_output_shapes
:џџџџџџџџџ*
T0
Z
predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ
l
!predictions/two_class_logits/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ѓ
predictions/two_class_logitsConcatV2predictions/zeros_likeadd!predictions/two_class_logits/axis*'
_output_shapes
:џџџџџџџџџ*
T0*
N
t
predictions/probabilitiesSoftmaxpredictions/two_class_logits*
T0*'
_output_shapes
:џџџџџџџџџ
j
predictions/class_ids/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

predictions/class_idsArgMaxpredictions/two_class_logitspredictions/class_ids/dimension*#
_output_shapes
:џџџџџџџџџ*
T0
e
predictions/ExpandDims/dimConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

predictions/ExpandDims
ExpandDimspredictions/class_idspredictions/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
m
predictions/str_classesAsStringpredictions/ExpandDims*'
_output_shapes
:џџџџџџџџџ*
T0	
D
predictions/ShapeShapeadd*
_output_shapes
:*
T0
i
predictions/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!predictions/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!predictions/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
щ
predictions/strided_sliceStridedSlicepredictions/Shapepredictions/strided_slice/stack!predictions/strided_slice/stack_1!predictions/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Y
predictions/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Y
predictions/range/limitConst*
value	B :*
dtype0*
_output_shapes
: 
Y
predictions/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :

predictions/rangeRangepredictions/range/startpredictions/range/limitpredictions/range/delta*
_output_shapes
:
^
predictions/ExpandDims_1/dimConst*
_output_shapes
: *
value	B : *
dtype0

predictions/ExpandDims_1
ExpandDimspredictions/rangepredictions/ExpandDims_1/dim*
T0*
_output_shapes

:
^
predictions/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 

predictions/Tile/multiplesPackpredictions/strided_slicepredictions/Tile/multiples/1*
T0*
N*
_output_shapes
:

predictions/TileTilepredictions/ExpandDims_1predictions/Tile/multiples*'
_output_shapes
:џџџџџџџџџ*
T0
F
predictions/Shape_1Shapeadd*
T0*
_output_shapes
:
k
!predictions/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#predictions/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
m
#predictions/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
predictions/strided_slice_1StridedSlicepredictions/Shape_1!predictions/strided_slice_1/stack#predictions/strided_slice_1/stack_1#predictions/strided_slice_1/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
[
predictions/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
[
predictions/range_1/limitConst*
dtype0*
_output_shapes
: *
value	B :
[
predictions/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

predictions/range_1Rangepredictions/range_1/startpredictions/range_1/limitpredictions/range_1/delta*
_output_shapes
:
Z
predictions/AsStringAsStringpredictions/range_1*
_output_shapes
:*
T0
^
predictions/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 

predictions/ExpandDims_2
ExpandDimspredictions/AsStringpredictions/ExpandDims_2/dim*
T0*
_output_shapes

:
`
predictions/Tile_1/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 

predictions/Tile_1/multiplesPackpredictions/strided_slice_1predictions/Tile_1/multiples/1*
T0*
N*
_output_shapes
:

predictions/Tile_1Tilepredictions/ExpandDims_2predictions/Tile_1/multiples*'
_output_shapes
:џџџџџџџџџ*
T0
A
logits_2/ShapeShapeadd*
_output_shapes
:*
T0
d
"logits_2/assert_rank_at_least/rankConst*
_output_shapes
: *
value	B :*
dtype0
T
Llogits_2/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
E
=logits_2/assert_rank_at_least/static_checks_determined_all_okNoOp
b
 labels/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
\
!labels/assert_rank_at_least/ShapeShapeIdentity_35*
_output_shapes
:*
T0	
R
Jlabels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
C
;labels/assert_rank_at_least/static_checks_determined_all_okNoOp
}
labels/ShapeShapeadd<^labels/assert_rank_at_least/static_checks_determined_all_ok*
T0*
_output_shapes
:
Ђ
labels/strided_slice/stackConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
valueB: *
dtype0
­
labels/strided_slice/stack_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Є
labels/strided_slice/stack_2Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
Ю
labels/strided_sliceStridedSlicelabels/Shapelabels/strided_slice/stacklabels/strided_slice/stack_1labels/strided_slice/stack_2*
_output_shapes
:*
T0*
Index0*

begin_mask

labels/concat/values_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:

labels/concat/axisConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
value	B : *
dtype0

labels/concatConcatV2labels/strided_slicelabels/concat/values_1labels/concat/axis*
T0*
N*
_output_shapes
:

labels/Shape_1ShapeIdentity_35<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
T0	
f
labels/assert_equal/EqualEquallabels/concatlabels/Shape_1*
T0*
_output_shapes
:
Ё
labels/assert_equal/ConstConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
:*
valueB: 
l
labels/assert_equal/AllAlllabels/assert_equal/Equallabels/assert_equal/Const*
_output_shapes
: 
Ж
 labels/assert_equal/Assert/ConstConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
Џ
"labels/assert_equal/Assert/Const_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
valueB Blabels_shape: *
dtype0
О
(labels/assert_equal/Assert/Assert/data_0Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
Е
(labels/assert_equal/Assert/Assert/data_2Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
Ц
!labels/assert_equal/Assert/AssertAssertlabels/assert_equal/All(labels/assert_equal/Assert/Assert/data_0labels/concat(labels/assert_equal/Assert/Assert/data_2labels/Shape_1*
T
2
Г
labelsIdentityIdentity_35"^labels/assert_equal/Assert/Assert<^labels/assert_rank_at_least/static_checks_determined_all_ok*'
_output_shapes
:џџџџџџџџџ*
T0	
X
ToFloatCastlabels*

SrcT0	*'
_output_shapes
:џџџџџџџџџ*

DstT0
\
check_label_range/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

-check_label_range/assert_less_equal/LessEqual	LessEqualToFloatcheck_label_range/Const*
T0*'
_output_shapes
:џџџџџџџџџ
z
)check_label_range/assert_less_equal/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
 
'check_label_range/assert_less_equal/AllAll-check_label_range/assert_less_equal/LessEqual)check_label_range/assert_less_equal/Const*
_output_shapes
: 

0check_label_range/assert_less_equal/Assert/ConstConst*0
value'B% BLabels must be <= n_classes - 1*
dtype0*
_output_shapes
: 
Ў
2check_label_range/assert_less_equal/Assert/Const_1Const*L
valueCBA B;Condition x <= y did not hold element-wise:x (ToFloat:0) = *
dtype0*
_output_shapes
: 

2check_label_range/assert_less_equal/Assert/Const_2Const*
dtype0*
_output_shapes
: *1
value(B& B y (check_label_range/Const:0) = 
й
6check_label_range/assert_less_equal/Assert/AssertGuardIf'check_label_range/assert_less_equal/All'check_label_range/assert_less_equal/AllToFloatcheck_label_range/Const*
Tout
2
*
Tcond0
*T
then_branchERC
Acheck_label_range_assert_less_equal_Assert_AssertGuard_true_14107*
_output_shapes
: *
Tin
2
*U
else_branchFRD
Bcheck_label_range_assert_less_equal_Assert_AssertGuard_false_14108*
output_shapes
: *
_lower_using_switch_merge(
Є
?check_label_range/assert_less_equal/Assert/AssertGuard/IdentityIdentity6check_label_range/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
p
+check_label_range/assert_non_negative/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ж
Acheck_label_range/assert_non_negative/assert_less_equal/LessEqual	LessEqual+check_label_range/assert_non_negative/ConstToFloat*
T0*'
_output_shapes
:џџџџџџџџџ

=check_label_range/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
м
;check_label_range/assert_non_negative/assert_less_equal/AllAllAcheck_label_range/assert_non_negative/assert_less_equal/LessEqual=check_label_range/assert_non_negative/assert_less_equal/Const*
_output_shapes
: 

Dcheck_label_range/assert_non_negative/assert_less_equal/Assert/ConstConst*$
valueB BLabels must be >= 0*
dtype0*
_output_shapes
: 
В
Fcheck_label_range/assert_non_negative/assert_less_equal/Assert/Const_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+Condition x >= 0 did not hold element-wise:

Fcheck_label_range/assert_non_negative/assert_less_equal/Assert/Const_2Const*!
valueB Bx (ToFloat:0) = *
dtype0*
_output_shapes
: 
Ѓ
Jcheck_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuardIf;check_label_range/assert_non_negative/assert_less_equal/All;check_label_range/assert_non_negative/assert_less_equal/AllToFloat*
_output_shapes
: *
Tin
2
*i
else_branchZRX
Vcheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_14132*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*
Tcond0
*h
then_branchYRW
Ucheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_14131
Ь
Scheck_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityJcheck_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
љ
check_label_range/IdentityIdentityToFloat@^check_label_range/assert_less_equal/Assert/AssertGuard/IdentityT^check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
\
logistic_loss/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ
{
logistic_loss/GreaterEqualGreaterEqualaddlogistic_loss/zeros_like*'
_output_shapes
:џџџџџџџџџ*
T0

logistic_loss/SelectSelectlogistic_loss/GreaterEqualaddlogistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
O
logistic_loss/NegNegadd*'
_output_shapes
:џџџџџџџџџ*
T0

logistic_loss/Select_1Selectlogistic_loss/GreaterEquallogistic_loss/Negadd*
T0*'
_output_shapes
:џџџџџџџџџ
k
logistic_loss/mulMuladdcheck_label_range/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
s
logistic_loss/subSublogistic_loss/Selectlogistic_loss/mul*'
_output_shapes
:џџџџџџџџџ*
T0
b
logistic_loss/ExpExplogistic_loss/Select_1*'
_output_shapes
:џџџџџџџџџ*
T0
a
logistic_loss/Log1pLog1plogistic_loss/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
n
logistic_lossAddlogistic_loss/sublogistic_loss/Log1p*
T0*'
_output_shapes
:џџџџџџџџџ
K
Cast/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
w
4broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
u
3broadcast_weights/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 
p
3broadcast_weights/assert_broadcastable/values/shapeShapelogistic_loss*
_output_shapes
:*
T0
t
2broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
J
Bbroadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
Ѓ
!broadcast_weights/ones_like/ShapeShapelogistic_lossC^broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Ћ
!broadcast_weights/ones_like/ConstConstC^broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

broadcast_weights/ones_likeFill!broadcast_weights/ones_like/Shape!broadcast_weights/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*
T0
o
broadcast_weightsMulCast/xbroadcast_weights/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
^
MulMullogistic_lossbroadcast_weights*
T0*'
_output_shapes
:џџџџџџџџџ
X
Const_3Const*
_output_shapes
:*
valueB"       *
dtype0
9
SumSumMulConst_3*
T0*
_output_shapes
: 
P
AssignAddVariableOpAssignAddVariableOphead/metrics/totalSum*
dtype0
w
ReadVariableOp_1ReadVariableOphead/metrics/total^AssignAddVariableOp^Sum*
dtype0*
_output_shapes
: 
X
Const_4Const*
_output_shapes
:*
valueB"       *
dtype0
I
Sum_1Sumbroadcast_weightsConst_4*
_output_shapes
: *
T0
j
AssignAddVariableOp_1AssignAddVariableOphead/metrics/countSum_1^AssignAddVariableOp*
dtype0

ReadVariableOp_2ReadVariableOphead/metrics/count^AssignAddVariableOp^AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
g
Cast_1Castpredictions/ExpandDims*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
d
EqualEqualcheck_label_range/IdentityCast_1*'
_output_shapes
:џџџџџџџџџ*
T0
V
Cast_2CastEqual*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

M
Cast_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
6broadcast_weights_1/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
w
5broadcast_weights_1/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
k
5broadcast_weights_1/assert_broadcastable/values/shapeShapeCast_2*
_output_shapes
:*
T0
v
4broadcast_weights_1/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
L
Dbroadcast_weights_1/assert_broadcastable/static_scalar_check_successNoOp
 
#broadcast_weights_1/ones_like/ShapeShapeCast_2E^broadcast_weights_1/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Џ
#broadcast_weights_1/ones_like/ConstConstE^broadcast_weights_1/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ё
broadcast_weights_1/ones_likeFill#broadcast_weights_1/ones_like/Shape#broadcast_weights_1/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*
T0
u
broadcast_weights_1MulCast_3/xbroadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
[
Mul_1MulCast_2broadcast_weights_1*'
_output_shapes
:џџџџџџџџџ*
T0
X
Const_5Const*
valueB"       *
dtype0*
_output_shapes
:
=
Sum_2SumMul_1Const_5*
T0*
_output_shapes
: 
V
AssignAddVariableOp_2AssignAddVariableOphead/metrics/total_1Sum_2*
dtype0
}
ReadVariableOp_3ReadVariableOphead/metrics/total_1^AssignAddVariableOp_2^Sum_2*
dtype0*
_output_shapes
: 
X
Const_6Const*
dtype0*
_output_shapes
:*
valueB"       
K
Sum_3Sumbroadcast_weights_1Const_6*
_output_shapes
: *
T0
n
AssignAddVariableOp_3AssignAddVariableOphead/metrics/count_1Sum_3^AssignAddVariableOp_2*
dtype0

ReadVariableOp_4ReadVariableOphead/metrics/count_1^AssignAddVariableOp_2^AssignAddVariableOp_3*
dtype0*
_output_shapes
: 
g
Cast_4Castpredictions/ExpandDims*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
M
Cast_5/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
u
!assert_greater_equal/GreaterEqualGreaterEqualCast_4Cast_5/x*'
_output_shapes
:џџџџџџџџџ*
T0
k
assert_greater_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
v
assert_greater_equal/AllAll!assert_greater_equal/GreaterEqualassert_greater_equal/Const*
_output_shapes
: 
z
!assert_greater_equal/Assert/ConstConst*)
value B Bpredictions must be >= 0*
dtype0*
_output_shapes
: 

#assert_greater_equal/Assert/Const_1Const*
dtype0*
_output_shapes
: *K
valueBB@ B:Condition x >= y did not hold element-wise:x (Cast_4:0) = 
u
#assert_greater_equal/Assert/Const_2Const*"
valueB By (Cast_5/x:0) = *
dtype0*
_output_shapes
: 
ў
'assert_greater_equal/Assert/AssertGuardIfassert_greater_equal/Allassert_greater_equal/AllCast_4Cast_5/x*
_lower_using_switch_merge(*
Tout
2
*E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_14200*
Tcond0
*
Tin
2
*
_output_shapes
: *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_14201*
output_shapes
: 

0assert_greater_equal/Assert/AssertGuard/IdentityIdentity'assert_greater_equal/Assert/AssertGuard*
_output_shapes
: *
T0

M
Cast_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
assert_less_equal/LessEqual	LessEqualCast_4Cast_6/x*
T0*'
_output_shapes
:џџџџџџџџџ
h
assert_less_equal/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
j
assert_less_equal/AllAllassert_less_equal/LessEqualassert_less_equal/Const*
_output_shapes
: 
w
assert_less_equal/Assert/ConstConst*
_output_shapes
: *)
value B Bpredictions must be <= 1*
dtype0

 assert_less_equal/Assert/Const_1Const*K
valueBB@ B:Condition x <= y did not hold element-wise:x (Cast_4:0) = *
dtype0*
_output_shapes
: 
r
 assert_less_equal/Assert/Const_2Const*"
valueB By (Cast_6/x:0) = *
dtype0*
_output_shapes
: 
я
$assert_less_equal/Assert/AssertGuardIfassert_less_equal/Allassert_less_equal/AllCast_4Cast_6/x*C
else_branch4R2
0assert_less_equal_Assert_AssertGuard_false_14225*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*B
then_branch3R1
/assert_less_equal_Assert_AssertGuard_true_14224*
Tcond0
*
_output_shapes
: *
Tin
2


-assert_less_equal/Assert/AssertGuard/IdentityIdentity$assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
Џ
Const_7Const1^assert_greater_equal/Assert/AssertGuard/Identity.^assert_less_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
valueB
 *  ?*
dtype0
7
Size_1SizeCast_4*
T0*
_output_shapes
: 
^
Reshape/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
[
ReshapeReshapeCast_4Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ
k
Cast_7Castcheck_label_range/Identity*

SrcT0*'
_output_shapes
:џџџџџџџџџ*

DstT0

`
Reshape_1/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
_
	Reshape_1ReshapeCast_7Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
T
Const_8Const*
valueB*   ?*
dtype0*
_output_shapes
:
P
ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
Z

ExpandDims
ExpandDimsConst_8ExpandDims/dim*
_output_shapes

:*
T0
I
stack/0Const*
_output_shapes
: *
value	B :*
dtype0
L
stackPackstack/0Size_1*
N*
_output_shapes
:*
T0
Q
TileTile
ExpandDimsstack*
T0*'
_output_shapes
:џџџџџџџџџ
a
Tile_1/multiplesConst*
dtype0*
_output_shapes
:*
valueB"      
[
Tile_1TileReshapeTile_1/multiples*'
_output_shapes
:џџџџџџџџџ*
T0
R
GreaterGreaterTile_1Tile*'
_output_shapes
:џџџџџџџџџ*
T0
a
Tile_2/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
]
Tile_2Tile	Reshape_1Tile_2/multiples*
T0
*'
_output_shapes
:џџџџџџџџџ
y
6broadcast_weights_2/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
w
5broadcast_weights_2/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
k
5broadcast_weights_2/assert_broadcastable/values/shapeShapeCast_4*
T0*
_output_shapes
:
v
4broadcast_weights_2/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
L
Dbroadcast_weights_2/assert_broadcastable/static_scalar_check_successNoOp
 
#broadcast_weights_2/ones_like/ShapeShapeCast_4E^broadcast_weights_2/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0
Џ
#broadcast_weights_2/ones_like/ConstConstE^broadcast_weights_2/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ё
broadcast_weights_2/ones_likeFill#broadcast_weights_2/ones_like/Shape#broadcast_weights_2/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
t
broadcast_weights_2MulConst_7broadcast_weights_2/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
`
Reshape_2/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
l
	Reshape_2Reshapebroadcast_weights_2Reshape_2/shape*
T0*'
_output_shapes
:џџџџџџџџџ
a
Tile_3/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
]
Tile_3Tile	Reshape_2Tile_3/multiples*'
_output_shapes
:џџџџџџџџџ*
T0
I

LogicalNot
LogicalNotTile_2*'
_output_shapes
:џџџџџџџџџ
R

LogicalAnd
LogicalAndTile_2Greater*'
_output_shapes
:џџџџџџџџџ
[
Cast_8Cast
LogicalAnd*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0
N
mul_2MulCast_8Tile_3*
T0*'
_output_shapes
:џџџџџџџџџ
Y
Sum_4/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Q
Sum_4Summul_2Sum_4/reduction_indices*
T0*
_output_shapes
:
]
AssignAddVariableOp_4AssignAddVariableOphead/metrics/true_positivesSum_4*
dtype0

ReadVariableOp_5ReadVariableOphead/metrics/true_positives^AssignAddVariableOp_4*
dtype0*
_output_shapes
:
X
LogicalAnd_1
LogicalAnd
LogicalNotGreater*'
_output_shapes
:џџџџџџџџџ
]
Cast_9CastLogicalAnd_1*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0
N
mul_3MulCast_9Tile_3*
T0*'
_output_shapes
:џџџџџџџџџ
Y
Sum_5/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Q
Sum_5Summul_3Sum_5/reduction_indices*
_output_shapes
:*
T0
^
AssignAddVariableOp_5AssignAddVariableOphead/metrics/false_positivesSum_5*
dtype0

ReadVariableOp_6ReadVariableOphead/metrics/false_positives^AssignAddVariableOp_5*
dtype0*
_output_shapes
:
B

group_depsNoOp^AssignAddVariableOp_4^AssignAddVariableOp_5
h
Cast_10Castpredictions/ExpandDims*

SrcT0	*'
_output_shapes
:џџџџџџџџџ*

DstT0
N
	Cast_11/xConst*
_output_shapes
: *
valueB
 *    *
dtype0
y
#assert_greater_equal_1/GreaterEqualGreaterEqualCast_10	Cast_11/x*
T0*'
_output_shapes
:џџџџџџџџџ
m
assert_greater_equal_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
|
assert_greater_equal_1/AllAll#assert_greater_equal_1/GreaterEqualassert_greater_equal_1/Const*
_output_shapes
: 
|
#assert_greater_equal_1/Assert/ConstConst*)
value B Bpredictions must be >= 0*
dtype0*
_output_shapes
: 
Ё
%assert_greater_equal_1/Assert/Const_1Const*L
valueCBA B;Condition x >= y did not hold element-wise:x (Cast_10:0) = *
dtype0*
_output_shapes
: 
x
%assert_greater_equal_1/Assert/Const_2Const*#
valueB By (Cast_11/x:0) = *
dtype0*
_output_shapes
: 

)assert_greater_equal_1/Assert/AssertGuardIfassert_greater_equal_1/Allassert_greater_equal_1/AllCast_10	Cast_11/x*
Tcond0
*G
then_branch8R6
4assert_greater_equal_1_Assert_AssertGuard_true_14292*
_output_shapes
: *
Tin
2
*H
else_branch9R7
5assert_greater_equal_1_Assert_AssertGuard_false_14293*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2


2assert_greater_equal_1/Assert/AssertGuard/IdentityIdentity)assert_greater_equal_1/Assert/AssertGuard*
T0
*
_output_shapes
: 
N
	Cast_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
p
assert_less_equal_1/LessEqual	LessEqualCast_10	Cast_12/x*
T0*'
_output_shapes
:џџџџџџџџџ
j
assert_less_equal_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
p
assert_less_equal_1/AllAllassert_less_equal_1/LessEqualassert_less_equal_1/Const*
_output_shapes
: 
y
 assert_less_equal_1/Assert/ConstConst*)
value B Bpredictions must be <= 1*
dtype0*
_output_shapes
: 

"assert_less_equal_1/Assert/Const_1Const*
dtype0*
_output_shapes
: *L
valueCBA B;Condition x <= y did not hold element-wise:x (Cast_10:0) = 
u
"assert_less_equal_1/Assert/Const_2Const*#
valueB By (Cast_12/x:0) = *
dtype0*
_output_shapes
: 
ћ
&assert_less_equal_1/Assert/AssertGuardIfassert_less_equal_1/Allassert_less_equal_1/AllCast_10	Cast_12/x*
Tout
2
*D
then_branch5R3
1assert_less_equal_1_Assert_AssertGuard_true_14316*
Tcond0
*
_output_shapes
: *
Tin
2
*E
else_branch6R4
2assert_less_equal_1_Assert_AssertGuard_false_14317*
output_shapes
: *
_lower_using_switch_merge(

/assert_less_equal_1/Assert/AssertGuard/IdentityIdentity&assert_less_equal_1/Assert/AssertGuard*
T0
*
_output_shapes
: 
Г
Const_9Const3^assert_greater_equal_1/Assert/AssertGuard/Identity0^assert_less_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
valueB
 *  ?*
dtype0
8
Size_2SizeCast_10*
T0*
_output_shapes
: 
`
Reshape_3/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
`
	Reshape_3ReshapeCast_10Reshape_3/shape*'
_output_shapes
:џџџџџџџџџ*
T0
l
Cast_13Castcheck_label_range/Identity*

SrcT0*'
_output_shapes
:џџџџџџџџџ*

DstT0

`
Reshape_4/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
`
	Reshape_4ReshapeCast_13Reshape_4/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
U
Const_10Const*
valueB*   ?*
dtype0*
_output_shapes
:
R
ExpandDims_1/dimConst*
value	B :*
dtype0*
_output_shapes
: 
_
ExpandDims_1
ExpandDimsConst_10ExpandDims_1/dim*
_output_shapes

:*
T0
K
	stack_1/0Const*
value	B :*
dtype0*
_output_shapes
: 
P
stack_1Pack	stack_1/0Size_2*
_output_shapes
:*
T0*
N
W
Tile_4TileExpandDims_1stack_1*'
_output_shapes
:џџџџџџџџџ*
T0
a
Tile_5/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
]
Tile_5Tile	Reshape_3Tile_5/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Greater_1GreaterTile_5Tile_4*
T0*'
_output_shapes
:џџџџџџџџџ
a
Tile_6/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
]
Tile_6Tile	Reshape_4Tile_6/multiples*'
_output_shapes
:џџџџџџџџџ*
T0

y
6broadcast_weights_3/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
w
5broadcast_weights_3/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
l
5broadcast_weights_3/assert_broadcastable/values/shapeShapeCast_10*
T0*
_output_shapes
:
v
4broadcast_weights_3/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
L
Dbroadcast_weights_3/assert_broadcastable/static_scalar_check_successNoOp
Ё
#broadcast_weights_3/ones_like/ShapeShapeCast_10E^broadcast_weights_3/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Џ
#broadcast_weights_3/ones_like/ConstConstE^broadcast_weights_3/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ё
broadcast_weights_3/ones_likeFill#broadcast_weights_3/ones_like/Shape#broadcast_weights_3/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
t
broadcast_weights_3MulConst_9broadcast_weights_3/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
`
Reshape_5/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
l
	Reshape_5Reshapebroadcast_weights_3Reshape_5/shape*
T0*'
_output_shapes
:џџџџџџџџџ
a
Tile_7/multiplesConst*
dtype0*
_output_shapes
:*
valueB"      
]
Tile_7Tile	Reshape_5Tile_7/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
N
LogicalNot_1
LogicalNot	Greater_1*'
_output_shapes
:џџџџџџџџџ
V
LogicalAnd_2
LogicalAndTile_6	Greater_1*'
_output_shapes
:џџџџџџџџџ
^
Cast_14CastLogicalAnd_2*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

O
mul_4MulCast_14Tile_7*'
_output_shapes
:џџџџџџџџџ*
T0
Y
Sum_6/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
Q
Sum_6Summul_4Sum_6/reduction_indices*
T0*
_output_shapes
:
_
AssignAddVariableOp_6AssignAddVariableOphead/metrics/true_positives_1Sum_6*
dtype0

ReadVariableOp_7ReadVariableOphead/metrics/true_positives_1^AssignAddVariableOp_6*
dtype0*
_output_shapes
:
Y
LogicalAnd_3
LogicalAndTile_6LogicalNot_1*'
_output_shapes
:џџџџџџџџџ
^
Cast_15CastLogicalAnd_3*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0
O
mul_5MulCast_15Tile_7*
T0*'
_output_shapes
:џџџџџџџџџ
Y
Sum_7/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
Q
Sum_7Summul_5Sum_7/reduction_indices*
T0*
_output_shapes
:
^
AssignAddVariableOp_7AssignAddVariableOphead/metrics/false_negativesSum_7*
dtype0

ReadVariableOp_8ReadVariableOphead/metrics/false_negatives^AssignAddVariableOp_7*
dtype0*
_output_shapes
:
D
group_deps_1NoOp^AssignAddVariableOp_6^AssignAddVariableOp_7
A
logits_3/ShapeShapeadd*
_output_shapes
:*
T0
d
"logits_3/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
T
Llogits_3/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
E
=logits_3/assert_rank_at_least/static_checks_determined_all_okNoOp
X
predictions_1/logisticSigmoidadd*'
_output_shapes
:џџџџџџџџџ*
T0
\
predictions_1/zeros_like	ZerosLikeadd*'
_output_shapes
:џџџџџџџџџ*
T0
n
#predictions_1/two_class_logits/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Љ
predictions_1/two_class_logitsConcatV2predictions_1/zeros_likeadd#predictions_1/two_class_logits/axis*'
_output_shapes
:џџџџџџџџџ*
T0*
N
`
broadcast_weights_4/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
6broadcast_weights_4/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
w
5broadcast_weights_4/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
{
5broadcast_weights_4/assert_broadcastable/values/shapeShapepredictions_1/logistic*
_output_shapes
:*
T0
v
4broadcast_weights_4/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
L
Dbroadcast_weights_4/assert_broadcastable/static_scalar_check_successNoOp
А
#broadcast_weights_4/ones_like/ShapeShapepredictions_1/logisticE^broadcast_weights_4/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Џ
#broadcast_weights_4/ones_like/ConstConstE^broadcast_weights_4/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ё
broadcast_weights_4/ones_likeFill#broadcast_weights_4/ones_like/Shape#broadcast_weights_4/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*
T0

broadcast_weights_4Mulbroadcast_weights_4/weightsbroadcast_weights_4/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
y
6broadcast_weights_5/assert_broadcastable/weights/shapeShapebroadcast_weights_4*
T0*
_output_shapes
:
w
5broadcast_weights_5/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
{
5broadcast_weights_5/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
v
4broadcast_weights_5/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
v
4broadcast_weights_5/assert_broadcastable/is_scalar/xConst*
dtype0*
_output_shapes
: *
value	B : 
Щ
2broadcast_weights_5/assert_broadcastable/is_scalarEqual4broadcast_weights_5/assert_broadcastable/is_scalar/x5broadcast_weights_5/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
З
7broadcast_weights_5/assert_broadcastable/is_valid_shapeStatelessIf2broadcast_weights_5/assert_broadcastable/is_scalar2broadcast_weights_5/assert_broadcastable/is_scalar4broadcast_weights_5/assert_broadcastable/values/rank5broadcast_weights_5/assert_broadcastable/weights/rank5broadcast_weights_5/assert_broadcastable/values/shape6broadcast_weights_5/assert_broadcastable/weights/shape*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*U
then_branchFRD
Bbroadcast_weights_5_assert_broadcastable_is_valid_shape_true_14397*
Tcond0
*
_output_shapes
: *
Tin	
2
*V
else_branchGRE
Cbroadcast_weights_5_assert_broadcastable_is_valid_shape_false_14398
І
@broadcast_weights_5/assert_broadcastable/is_valid_shape/IdentityIdentity7broadcast_weights_5/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 

.broadcast_weights_5/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

0broadcast_weights_5/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

0broadcast_weights_5/assert_broadcastable/Const_2Const*
dtype0*
_output_shapes
: *&
valueB Bbroadcast_weights_4:0
~
0broadcast_weights_5/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

0broadcast_weights_5/assert_broadcastable/Const_4Const*)
value B Bpredictions_1/logistic:0*
dtype0*
_output_shapes
: 
{
0broadcast_weights_5/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

4broadcast_weights_5/assert_broadcastable/AssertGuardIf@broadcast_weights_5/assert_broadcastable/is_valid_shape/Identity@broadcast_weights_5/assert_broadcastable/is_valid_shape/Identity6broadcast_weights_5/assert_broadcastable/weights/shape5broadcast_weights_5/assert_broadcastable/values/shape2broadcast_weights_5/assert_broadcastable/is_scalar*
Tin
2

*
_output_shapes
: *S
else_branchDRB
@broadcast_weights_5_assert_broadcastable_AssertGuard_false_14448*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*R
then_branchCRA
?broadcast_weights_5_assert_broadcastable_AssertGuard_true_14447*
Tcond0

 
=broadcast_weights_5/assert_broadcastable/AssertGuard/IdentityIdentity4broadcast_weights_5/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
Љ
#broadcast_weights_5/ones_like/ShapeShapepredictions_1/logistic>^broadcast_weights_5/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
Ј
#broadcast_weights_5/ones_like/ConstConst>^broadcast_weights_5/assert_broadcastable/AssertGuard/Identity*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ё
broadcast_weights_5/ones_likeFill#broadcast_weights_5/ones_like/Shape#broadcast_weights_5/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*
T0

broadcast_weights_5Mulbroadcast_weights_4broadcast_weights_5/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
k
Mul_6Mulpredictions_1/logisticbroadcast_weights_5*
T0*'
_output_shapes
:џџџџџџџџџ
Y
Const_11Const*
valueB"       *
dtype0*
_output_shapes
:
>
Sum_8SumMul_6Const_11*
T0*
_output_shapes
: 
V
AssignAddVariableOp_8AssignAddVariableOphead/metrics/total_2Sum_8*
dtype0
}
ReadVariableOp_9ReadVariableOphead/metrics/total_2^AssignAddVariableOp_8^Sum_8*
dtype0*
_output_shapes
: 
Y
Const_12Const*
valueB"       *
dtype0*
_output_shapes
:
L
Sum_9Sumbroadcast_weights_5Const_12*
_output_shapes
: *
T0
n
AssignAddVariableOp_9AssignAddVariableOphead/metrics/count_2Sum_9^AssignAddVariableOp_8*
dtype0

ReadVariableOp_10ReadVariableOphead/metrics/count_2^AssignAddVariableOp_8^AssignAddVariableOp_9*
dtype0*
_output_shapes
: 
`
broadcast_weights_6/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
6broadcast_weights_6/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
w
5broadcast_weights_6/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 

5broadcast_weights_6/assert_broadcastable/values/shapeShapecheck_label_range/Identity*
T0*
_output_shapes
:
v
4broadcast_weights_6/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
L
Dbroadcast_weights_6/assert_broadcastable/static_scalar_check_successNoOp
Д
#broadcast_weights_6/ones_like/ShapeShapecheck_label_range/IdentityE^broadcast_weights_6/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0
Џ
#broadcast_weights_6/ones_like/ConstConstE^broadcast_weights_6/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ё
broadcast_weights_6/ones_likeFill#broadcast_weights_6/ones_like/Shape#broadcast_weights_6/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_6Mulbroadcast_weights_6/weightsbroadcast_weights_6/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
y
6broadcast_weights_7/assert_broadcastable/weights/shapeShapebroadcast_weights_6*
T0*
_output_shapes
:
w
5broadcast_weights_7/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 

5broadcast_weights_7/assert_broadcastable/values/shapeShapecheck_label_range/Identity*
_output_shapes
:*
T0
v
4broadcast_weights_7/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
v
4broadcast_weights_7/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
Щ
2broadcast_weights_7/assert_broadcastable/is_scalarEqual4broadcast_weights_7/assert_broadcastable/is_scalar/x5broadcast_weights_7/assert_broadcastable/weights/rank*
_output_shapes
: *
T0
З
7broadcast_weights_7/assert_broadcastable/is_valid_shapeStatelessIf2broadcast_weights_7/assert_broadcastable/is_scalar2broadcast_weights_7/assert_broadcastable/is_scalar4broadcast_weights_7/assert_broadcastable/values/rank5broadcast_weights_7/assert_broadcastable/weights/rank5broadcast_weights_7/assert_broadcastable/values/shape6broadcast_weights_7/assert_broadcastable/weights/shape*
_output_shapes
: *
Tin	
2
*V
else_branchGRE
Cbroadcast_weights_7_assert_broadcastable_is_valid_shape_false_14496*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*
Tcond0
*U
then_branchFRD
Bbroadcast_weights_7_assert_broadcastable_is_valid_shape_true_14495
І
@broadcast_weights_7/assert_broadcastable/is_valid_shape/IdentityIdentity7broadcast_weights_7/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 

.broadcast_weights_7/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

0broadcast_weights_7/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

0broadcast_weights_7/assert_broadcastable/Const_2Const*
dtype0*
_output_shapes
: *&
valueB Bbroadcast_weights_6:0
~
0broadcast_weights_7/assert_broadcastable/Const_3Const*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=

0broadcast_weights_7/assert_broadcastable/Const_4Const*-
value$B" Bcheck_label_range/Identity:0*
dtype0*
_output_shapes
: 
{
0broadcast_weights_7/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

4broadcast_weights_7/assert_broadcastable/AssertGuardIf@broadcast_weights_7/assert_broadcastable/is_valid_shape/Identity@broadcast_weights_7/assert_broadcastable/is_valid_shape/Identity6broadcast_weights_7/assert_broadcastable/weights/shape5broadcast_weights_7/assert_broadcastable/values/shape2broadcast_weights_7/assert_broadcastable/is_scalar*
Tcond0
*R
then_branchCRA
?broadcast_weights_7_assert_broadcastable_AssertGuard_true_14545*
_output_shapes
: *
Tin
2

*S
else_branchDRB
@broadcast_weights_7_assert_broadcastable_AssertGuard_false_14546*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2

 
=broadcast_weights_7/assert_broadcastable/AssertGuard/IdentityIdentity4broadcast_weights_7/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
­
#broadcast_weights_7/ones_like/ShapeShapecheck_label_range/Identity>^broadcast_weights_7/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
Ј
#broadcast_weights_7/ones_like/ConstConst>^broadcast_weights_7/assert_broadcastable/AssertGuard/Identity*
_output_shapes
: *
valueB
 *  ?*
dtype0
Ё
broadcast_weights_7/ones_likeFill#broadcast_weights_7/ones_like/Shape#broadcast_weights_7/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_7Mulbroadcast_weights_6broadcast_weights_7/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
o
Mul_7Mulcheck_label_range/Identitybroadcast_weights_7*
T0*'
_output_shapes
:џџџџџџџџџ
Y
Const_13Const*
valueB"       *
dtype0*
_output_shapes
:
?
Sum_10SumMul_7Const_13*
_output_shapes
: *
T0
X
AssignAddVariableOp_10AssignAddVariableOphead/metrics/total_3Sum_10*
dtype0

ReadVariableOp_11ReadVariableOphead/metrics/total_3^AssignAddVariableOp_10^Sum_10*
dtype0*
_output_shapes
: 
Y
Const_14Const*
_output_shapes
:*
valueB"       *
dtype0
M
Sum_11Sumbroadcast_weights_7Const_14*
T0*
_output_shapes
: 
q
AssignAddVariableOp_11AssignAddVariableOphead/metrics/count_3Sum_11^AssignAddVariableOp_10*
dtype0

ReadVariableOp_12ReadVariableOphead/metrics/count_3^AssignAddVariableOp_10^AssignAddVariableOp_11*
dtype0*
_output_shapes
: 

NoOpNoOp
^
ReadVariableOp_13ReadVariableOphead/metrics/count_3*
dtype0*
_output_shapes
: 
_
sub/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0
R
subSubReadVariableOp_13sub/ReadVariableOp*
T0*
_output_shapes
: 
c
Maximum/ReadVariableOpReadVariableOphead/metrics/total_3*
dtype0*
_output_shapes
: 
P
MaximumMaximumMaximum/ReadVariableOpsub*
_output_shapes
: *
T0
`
broadcast_weights_8/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
6broadcast_weights_8/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
w
5broadcast_weights_8/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
{
5broadcast_weights_8/assert_broadcastable/values/shapeShapepredictions_1/logistic*
_output_shapes
:*
T0
v
4broadcast_weights_8/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
L
Dbroadcast_weights_8/assert_broadcastable/static_scalar_check_successNoOp
А
#broadcast_weights_8/ones_like/ShapeShapepredictions_1/logisticE^broadcast_weights_8/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Џ
#broadcast_weights_8/ones_like/ConstConstE^broadcast_weights_8/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ё
broadcast_weights_8/ones_likeFill#broadcast_weights_8/ones_like/Shape#broadcast_weights_8/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_8Mulbroadcast_weights_8/weightsbroadcast_weights_8/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
N
	Cast_16/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 

#assert_greater_equal_2/GreaterEqualGreaterEqualpredictions_1/logistic	Cast_16/x*
T0*'
_output_shapes
:џџџџџџџџџ
m
assert_greater_equal_2/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
|
assert_greater_equal_2/AllAll#assert_greater_equal_2/GreaterEqualassert_greater_equal_2/Const*
_output_shapes
: 
|
#assert_greater_equal_2/Assert/ConstConst*)
value B Bpredictions must be >= 0*
dtype0*
_output_shapes
: 
А
%assert_greater_equal_2/Assert/Const_1Const*[
valueRBP BJCondition x >= y did not hold element-wise:x (predictions_1/logistic:0) = *
dtype0*
_output_shapes
: 
x
%assert_greater_equal_2/Assert/Const_2Const*#
valueB By (Cast_16/x:0) = *
dtype0*
_output_shapes
: 

)assert_greater_equal_2/Assert/AssertGuardIfassert_greater_equal_2/Allassert_greater_equal_2/Allpredictions_1/logistic	Cast_16/x*G
then_branch8R6
4assert_greater_equal_2_Assert_AssertGuard_true_14599*
Tcond0
*
_output_shapes
: *
Tin
2
*H
else_branch9R7
5assert_greater_equal_2_Assert_AssertGuard_false_14600*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2


2assert_greater_equal_2/Assert/AssertGuard/IdentityIdentity)assert_greater_equal_2/Assert/AssertGuard*
T0
*
_output_shapes
: 
N
	Cast_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

assert_less_equal_2/LessEqual	LessEqualpredictions_1/logistic	Cast_17/x*'
_output_shapes
:џџџџџџџџџ*
T0
j
assert_less_equal_2/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
p
assert_less_equal_2/AllAllassert_less_equal_2/LessEqualassert_less_equal_2/Const*
_output_shapes
: 
y
 assert_less_equal_2/Assert/ConstConst*
_output_shapes
: *)
value B Bpredictions must be <= 1*
dtype0
­
"assert_less_equal_2/Assert/Const_1Const*[
valueRBP BJCondition x <= y did not hold element-wise:x (predictions_1/logistic:0) = *
dtype0*
_output_shapes
: 
u
"assert_less_equal_2/Assert/Const_2Const*#
valueB By (Cast_17/x:0) = *
dtype0*
_output_shapes
: 

&assert_less_equal_2/Assert/AssertGuardIfassert_less_equal_2/Allassert_less_equal_2/Allpredictions_1/logistic	Cast_17/x*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*
Tcond0
*D
then_branch5R3
1assert_less_equal_2_Assert_AssertGuard_true_14623*
Tin
2
*
_output_shapes
: *E
else_branch6R4
2assert_less_equal_2_Assert_AssertGuard_false_14624

/assert_less_equal_2/Assert/AssertGuard/IdentityIdentity&assert_less_equal_2/Assert/AssertGuard*
_output_shapes
: *
T0

G
Size_3Sizepredictions_1/logistic*
_output_shapes
: *
T0
`
Reshape_6/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
o
	Reshape_6Reshapepredictions_1/logisticReshape_6/shape*'
_output_shapes
:џџџџџџџџџ*
T0
l
Cast_18Castcheck_label_range/Identity*'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0
`
Reshape_7/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
`
	Reshape_7ReshapeCast_18Reshape_7/shape*'
_output_shapes
:џџџџџџџџџ*
T0

ї
Const_15Const*Й
valueЏBЌШ" ПжГЯЉЄ;ЯЉ$<Зўv<ЯЉЄ<CдЭ<Зўі<=ЯЉ$=	?9=CдM=}ib=Зўv=јЩ==2_=ЯЉЄ=lєЎ=	?Й=ІУ=CдЭ=ри=}iт=Дь=Зўі=ЊЄ >јЩ>Gя
>>ф9>2_>>ЯЉ$>Я)>lє.>Л4>	?9>Wd>>ІC>єЎH>CдM>љR>рX>.D]>}ib>Ыg>Дl>hйq>Зўv>$|>ЊЄ>Q7>јЩ> \>Gя>ю>><Ї>ф9>Ь>2_>йё>>(Ђ>ЯЉЄ>v<Ї>ЯЉ>ХaЌ>lєЎ>Б>ЛД>bЌЖ>	?Й>АбЛ>WdО>џіР>ІУ>MЦ>єЎШ>AЫ>CдЭ>ъfа>љв>9е>ри>Бк>.Dн>жжп>}iт>$ќф>Ыч>r!ъ>Дь>СFя>hйё>lє>Зўі>^љ>$ќ>ЌЖў>ЊЄ ?§э?Q7?Ѕ?јЩ?L? \?ѓЅ	?Gя
?8?ю?BЫ??щ]?<Ї?№?ф9?7?Ь?п?2_?Ј?йё?-;??дЭ ?("?{`#?ЯЉ$?#ѓ%?v<'?Ъ(?Я)?q+?Хa,?Ћ-?lє.?Р=0?1?gа2?Л4?c5?bЌ6?Еѕ7?	?9?]:?Аб;?=?Wd>?Ћ­??џі@?R@B?ІC?њвD?MF?ЁeG?єЎH?HјI?AK?яL?CдM?O?ъfP?>АQ?љR?хBT?9U?еV?рX?3hY?БZ?лњ[?.D]?^?жж_?) a?}ib?аВc?$ќd?xEf?Ыg?иh?r!j?Цjk?Дl?m§m?СFo?p?hйq?М"s?lt?cЕu?Зўv?
Hx?^y?Вкz?$|?Ym}?ЌЖ~? ?*
dtype0*
_output_shapes	
:Ш
R
ExpandDims_2/dimConst*
value	B :*
dtype0*
_output_shapes
: 
`
ExpandDims_2
ExpandDimsConst_15ExpandDims_2/dim*
T0*
_output_shapes
:	Ш
K
	stack_2/0Const*
dtype0*
_output_shapes
: *
value	B :
P
stack_2Pack	stack_2/0Size_3*
T0*
N*
_output_shapes
:
X
Tile_8TileExpandDims_2stack_2*
T0*(
_output_shapes
:Шџџџџџџџџџ
a
Tile_9/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:
^
Tile_9Tile	Reshape_6Tile_9/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
W
	Greater_2GreaterTile_9Tile_8*
T0*(
_output_shapes
:Шџџџџџџџџџ
b
Tile_10/multiplesConst*
_output_shapes
:*
valueB"Ш      *
dtype0
`
Tile_10Tile	Reshape_7Tile_10/multiples*(
_output_shapes
:Шџџџџџџџџџ*
T0

y
6broadcast_weights_9/assert_broadcastable/weights/shapeShapebroadcast_weights_8*
T0*
_output_shapes
:
w
5broadcast_weights_9/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
{
5broadcast_weights_9/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
v
4broadcast_weights_9/assert_broadcastable/values/rankConst*
_output_shapes
: *
value	B :*
dtype0
v
4broadcast_weights_9/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
value	B : *
dtype0
Щ
2broadcast_weights_9/assert_broadcastable/is_scalarEqual4broadcast_weights_9/assert_broadcastable/is_scalar/x5broadcast_weights_9/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
З
7broadcast_weights_9/assert_broadcastable/is_valid_shapeStatelessIf2broadcast_weights_9/assert_broadcastable/is_scalar2broadcast_weights_9/assert_broadcastable/is_scalar4broadcast_weights_9/assert_broadcastable/values/rank5broadcast_weights_9/assert_broadcastable/weights/rank5broadcast_weights_9/assert_broadcastable/values/shape6broadcast_weights_9/assert_broadcastable/weights/shape*
Tcond0
*U
then_branchFRD
Bbroadcast_weights_9_assert_broadcastable_is_valid_shape_true_14663*
_output_shapes
: *
Tin	
2
*V
else_branchGRE
Cbroadcast_weights_9_assert_broadcastable_is_valid_shape_false_14664*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2

І
@broadcast_weights_9/assert_broadcastable/is_valid_shape/IdentityIdentity7broadcast_weights_9/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 

.broadcast_weights_9/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

0broadcast_weights_9/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

0broadcast_weights_9/assert_broadcastable/Const_2Const*&
valueB Bbroadcast_weights_8:0*
dtype0*
_output_shapes
: 
~
0broadcast_weights_9/assert_broadcastable/Const_3Const*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=

0broadcast_weights_9/assert_broadcastable/Const_4Const*)
value B Bpredictions_1/logistic:0*
dtype0*
_output_shapes
: 
{
0broadcast_weights_9/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

4broadcast_weights_9/assert_broadcastable/AssertGuardIf@broadcast_weights_9/assert_broadcastable/is_valid_shape/Identity@broadcast_weights_9/assert_broadcastable/is_valid_shape/Identity6broadcast_weights_9/assert_broadcastable/weights/shape5broadcast_weights_9/assert_broadcastable/values/shape2broadcast_weights_9/assert_broadcastable/is_scalar*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*
Tcond0
*R
then_branchCRA
?broadcast_weights_9_assert_broadcastable_AssertGuard_true_14713*
_output_shapes
: *
Tin
2

*S
else_branchDRB
@broadcast_weights_9_assert_broadcastable_AssertGuard_false_14714
 
=broadcast_weights_9/assert_broadcastable/AssertGuard/IdentityIdentity4broadcast_weights_9/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
Љ
#broadcast_weights_9/ones_like/ShapeShapepredictions_1/logistic>^broadcast_weights_9/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
Ј
#broadcast_weights_9/ones_like/ConstConst>^broadcast_weights_9/assert_broadcastable/AssertGuard/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ё
broadcast_weights_9/ones_likeFill#broadcast_weights_9/ones_like/Shape#broadcast_weights_9/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

broadcast_weights_9Mulbroadcast_weights_8broadcast_weights_9/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
`
Reshape_8/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
l
	Reshape_8Reshapebroadcast_weights_9Reshape_8/shape*
T0*'
_output_shapes
:џџџџџџџџџ
b
Tile_11/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:
`
Tile_11Tile	Reshape_8Tile_11/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
O
LogicalNot_2
LogicalNot	Greater_2*(
_output_shapes
:Шџџџџџџџџџ
M
LogicalNot_3
LogicalNotTile_10*(
_output_shapes
:Шџџџџџџџџџ
X
LogicalAnd_4
LogicalAndTile_10	Greater_2*(
_output_shapes
:Шџџџџџџџџџ
_
Cast_19CastLogicalAnd_4*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
Q
mul_8MulCast_19Tile_11*
T0*(
_output_shapes
:Шџџџџџџџџџ
Z
Sum_12/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
T
Sum_12Summul_8Sum_12/reduction_indices*
T0*
_output_shapes	
:Ш
a
AssignAddVariableOp_12AssignAddVariableOphead/metrics/true_positives_2Sum_12*
dtype0

ReadVariableOp_14ReadVariableOphead/metrics/true_positives_2^AssignAddVariableOp_12*
dtype0*
_output_shapes	
:Ш
[
LogicalAnd_5
LogicalAndTile_10LogicalNot_2*(
_output_shapes
:Шџџџџџџџџџ
_
Cast_20CastLogicalAnd_5*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
Q
mul_9MulCast_20Tile_11*
T0*(
_output_shapes
:Шџџџџџџџџџ
Z
Sum_13/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
T
Sum_13Summul_9Sum_13/reduction_indices*
T0*
_output_shapes	
:Ш
b
AssignAddVariableOp_13AssignAddVariableOphead/metrics/false_negatives_1Sum_13*
dtype0

ReadVariableOp_15ReadVariableOphead/metrics/false_negatives_1^AssignAddVariableOp_13*
dtype0*
_output_shapes	
:Ш
]
LogicalAnd_6
LogicalAndLogicalNot_3	Greater_2*(
_output_shapes
:Шџџџџџџџџџ
_
Cast_21CastLogicalAnd_6*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
R
mul_10MulCast_21Tile_11*
T0*(
_output_shapes
:Шџџџџџџџџџ
Z
Sum_14/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
U
Sum_14Summul_10Sum_14/reduction_indices*
_output_shapes	
:Ш*
T0
b
AssignAddVariableOp_14AssignAddVariableOphead/metrics/false_positives_1Sum_14*
dtype0

ReadVariableOp_16ReadVariableOphead/metrics/false_positives_1^AssignAddVariableOp_14*
dtype0*
_output_shapes	
:Ш
`
LogicalAnd_7
LogicalAndLogicalNot_3LogicalNot_2*(
_output_shapes
:Шџџџџџџџџџ
_
Cast_22CastLogicalAnd_7*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
R
mul_11MulCast_22Tile_11*
T0*(
_output_shapes
:Шџџџџџџџџџ
Z
Sum_15/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
U
Sum_15Summul_11Sum_15/reduction_indices*
_output_shapes	
:Ш*
T0
_
AssignAddVariableOp_15AssignAddVariableOphead/metrics/true_negativesSum_15*
dtype0

ReadVariableOp_17ReadVariableOphead/metrics/true_negatives^AssignAddVariableOp_15*
dtype0*
_output_shapes	
:Ш
x
group_deps_2NoOp^AssignAddVariableOp_12^AssignAddVariableOp_13^AssignAddVariableOp_14^AssignAddVariableOp_15
a
broadcast_weights_10/weightsConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
z
7broadcast_weights_10/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 
x
6broadcast_weights_10/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
|
6broadcast_weights_10/assert_broadcastable/values/shapeShapepredictions_1/logistic*
_output_shapes
:*
T0
w
5broadcast_weights_10/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
M
Ebroadcast_weights_10/assert_broadcastable/static_scalar_check_successNoOp
В
$broadcast_weights_10/ones_like/ShapeShapepredictions_1/logisticF^broadcast_weights_10/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Б
$broadcast_weights_10/ones_like/ConstConstF^broadcast_weights_10/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Є
broadcast_weights_10/ones_likeFill$broadcast_weights_10/ones_like/Shape$broadcast_weights_10/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*
T0

broadcast_weights_10Mulbroadcast_weights_10/weightsbroadcast_weights_10/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
N
	Cast_23/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 

#assert_greater_equal_3/GreaterEqualGreaterEqualpredictions_1/logistic	Cast_23/x*
T0*'
_output_shapes
:џџџџџџџџџ
m
assert_greater_equal_3/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
|
assert_greater_equal_3/AllAll#assert_greater_equal_3/GreaterEqualassert_greater_equal_3/Const*
_output_shapes
: 
|
#assert_greater_equal_3/Assert/ConstConst*)
value B Bpredictions must be >= 0*
dtype0*
_output_shapes
: 
А
%assert_greater_equal_3/Assert/Const_1Const*[
valueRBP BJCondition x >= y did not hold element-wise:x (predictions_1/logistic:0) = *
dtype0*
_output_shapes
: 
x
%assert_greater_equal_3/Assert/Const_2Const*
dtype0*
_output_shapes
: *#
valueB By (Cast_23/x:0) = 

)assert_greater_equal_3/Assert/AssertGuardIfassert_greater_equal_3/Allassert_greater_equal_3/Allpredictions_1/logistic	Cast_23/x*
Tcond0
*G
then_branch8R6
4assert_greater_equal_3_Assert_AssertGuard_true_14785*
_output_shapes
: *
Tin
2
*H
else_branch9R7
5assert_greater_equal_3_Assert_AssertGuard_false_14786*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2


2assert_greater_equal_3/Assert/AssertGuard/IdentityIdentity)assert_greater_equal_3/Assert/AssertGuard*
T0
*
_output_shapes
: 
N
	Cast_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

assert_less_equal_3/LessEqual	LessEqualpredictions_1/logistic	Cast_24/x*'
_output_shapes
:џџџџџџџџџ*
T0
j
assert_less_equal_3/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
p
assert_less_equal_3/AllAllassert_less_equal_3/LessEqualassert_less_equal_3/Const*
_output_shapes
: 
y
 assert_less_equal_3/Assert/ConstConst*)
value B Bpredictions must be <= 1*
dtype0*
_output_shapes
: 
­
"assert_less_equal_3/Assert/Const_1Const*[
valueRBP BJCondition x <= y did not hold element-wise:x (predictions_1/logistic:0) = *
dtype0*
_output_shapes
: 
u
"assert_less_equal_3/Assert/Const_2Const*
dtype0*
_output_shapes
: *#
valueB By (Cast_24/x:0) = 

&assert_less_equal_3/Assert/AssertGuardIfassert_less_equal_3/Allassert_less_equal_3/Allpredictions_1/logistic	Cast_24/x*
Tin
2
*
_output_shapes
: *E
else_branch6R4
2assert_less_equal_3_Assert_AssertGuard_false_14810*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*D
then_branch5R3
1assert_less_equal_3_Assert_AssertGuard_true_14809*
Tcond0


/assert_less_equal_3/Assert/AssertGuard/IdentityIdentity&assert_less_equal_3/Assert/AssertGuard*
T0
*
_output_shapes
: 
G
Size_4Sizepredictions_1/logistic*
T0*
_output_shapes
: 
`
Reshape_9/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
o
	Reshape_9Reshapepredictions_1/logisticReshape_9/shape*
T0*'
_output_shapes
:џџџџџџџџџ
l
Cast_25Castcheck_label_range/Identity*'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0
a
Reshape_10/shapeConst*
_output_shapes
:*
valueB"   џџџџ*
dtype0
b

Reshape_10ReshapeCast_25Reshape_10/shape*'
_output_shapes
:џџџџџџџџџ*
T0

ї
Const_16Const*Й
valueЏBЌШ" ПжГЯЉЄ;ЯЉ$<Зўv<ЯЉЄ<CдЭ<Зўі<=ЯЉ$=	?9=CдM=}ib=Зўv=јЩ==2_=ЯЉЄ=lєЎ=	?Й=ІУ=CдЭ=ри=}iт=Дь=Зўі=ЊЄ >јЩ>Gя
>>ф9>2_>>ЯЉ$>Я)>lє.>Л4>	?9>Wd>>ІC>єЎH>CдM>љR>рX>.D]>}ib>Ыg>Дl>hйq>Зўv>$|>ЊЄ>Q7>јЩ> \>Gя>ю>><Ї>ф9>Ь>2_>йё>>(Ђ>ЯЉЄ>v<Ї>ЯЉ>ХaЌ>lєЎ>Б>ЛД>bЌЖ>	?Й>АбЛ>WdО>џіР>ІУ>MЦ>єЎШ>AЫ>CдЭ>ъfа>љв>9е>ри>Бк>.Dн>жжп>}iт>$ќф>Ыч>r!ъ>Дь>СFя>hйё>lє>Зўі>^љ>$ќ>ЌЖў>ЊЄ ?§э?Q7?Ѕ?јЩ?L? \?ѓЅ	?Gя
?8?ю?BЫ??щ]?<Ї?№?ф9?7?Ь?п?2_?Ј?йё?-;??дЭ ?("?{`#?ЯЉ$?#ѓ%?v<'?Ъ(?Я)?q+?Хa,?Ћ-?lє.?Р=0?1?gа2?Л4?c5?bЌ6?Еѕ7?	?9?]:?Аб;?=?Wd>?Ћ­??џі@?R@B?ІC?њвD?MF?ЁeG?єЎH?HјI?AK?яL?CдM?O?ъfP?>АQ?љR?хBT?9U?еV?рX?3hY?БZ?лњ[?.D]?^?жж_?) a?}ib?аВc?$ќd?xEf?Ыg?иh?r!j?Цjk?Дl?m§m?СFo?p?hйq?М"s?lt?cЕu?Зўv?
Hx?^y?Вкz?$|?Ym}?ЌЖ~? ?*
dtype0*
_output_shapes	
:Ш
R
ExpandDims_3/dimConst*
_output_shapes
: *
value	B :*
dtype0
`
ExpandDims_3
ExpandDimsConst_16ExpandDims_3/dim*
T0*
_output_shapes
:	Ш
K
	stack_3/0Const*
value	B :*
dtype0*
_output_shapes
: 
P
stack_3Pack	stack_3/0Size_4*
N*
_output_shapes
:*
T0
Y
Tile_12TileExpandDims_3stack_3*(
_output_shapes
:Шџџџџџџџџџ*
T0
b
Tile_13/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:
`
Tile_13Tile	Reshape_9Tile_13/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
Y
	Greater_3GreaterTile_13Tile_12*(
_output_shapes
:Шџџџџџџџџџ*
T0
b
Tile_14/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:
a
Tile_14Tile
Reshape_10Tile_14/multiples*(
_output_shapes
:Шџџџџџџџџџ*
T0

{
7broadcast_weights_11/assert_broadcastable/weights/shapeShapebroadcast_weights_10*
T0*
_output_shapes
:
x
6broadcast_weights_11/assert_broadcastable/weights/rankConst*
_output_shapes
: *
value	B :*
dtype0
|
6broadcast_weights_11/assert_broadcastable/values/shapeShapepredictions_1/logistic*
_output_shapes
:*
T0
w
5broadcast_weights_11/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
w
5broadcast_weights_11/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
3broadcast_weights_11/assert_broadcastable/is_scalarEqual5broadcast_weights_11/assert_broadcastable/is_scalar/x6broadcast_weights_11/assert_broadcastable/weights/rank*
_output_shapes
: *
T0
Р
8broadcast_weights_11/assert_broadcastable/is_valid_shapeStatelessIf3broadcast_weights_11/assert_broadcastable/is_scalar3broadcast_weights_11/assert_broadcastable/is_scalar5broadcast_weights_11/assert_broadcastable/values/rank6broadcast_weights_11/assert_broadcastable/weights/rank6broadcast_weights_11/assert_broadcastable/values/shape7broadcast_weights_11/assert_broadcastable/weights/shape*
_lower_using_switch_merge(*
Tout
2
*
Tcond0
*V
then_branchGRE
Cbroadcast_weights_11_assert_broadcastable_is_valid_shape_true_14849*
Tin	
2
*
_output_shapes
: *W
else_branchHRF
Dbroadcast_weights_11_assert_broadcastable_is_valid_shape_false_14850*
output_shapes
: 
Ј
Abroadcast_weights_11/assert_broadcastable/is_valid_shape/IdentityIdentity8broadcast_weights_11/assert_broadcastable/is_valid_shape*
_output_shapes
: *
T0


/broadcast_weights_11/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

1broadcast_weights_11/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

1broadcast_weights_11/assert_broadcastable/Const_2Const*'
valueB Bbroadcast_weights_10:0*
dtype0*
_output_shapes
: 

1broadcast_weights_11/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

1broadcast_weights_11/assert_broadcastable/Const_4Const*)
value B Bpredictions_1/logistic:0*
dtype0*
_output_shapes
: 
|
1broadcast_weights_11/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

5broadcast_weights_11/assert_broadcastable/AssertGuardIfAbroadcast_weights_11/assert_broadcastable/is_valid_shape/IdentityAbroadcast_weights_11/assert_broadcastable/is_valid_shape/Identity7broadcast_weights_11/assert_broadcastable/weights/shape6broadcast_weights_11/assert_broadcastable/values/shape3broadcast_weights_11/assert_broadcastable/is_scalar*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*
Tcond0
*S
then_branchDRB
@broadcast_weights_11_assert_broadcastable_AssertGuard_true_14899*
_output_shapes
: *
Tin
2

*T
else_branchERC
Abroadcast_weights_11_assert_broadcastable_AssertGuard_false_14900
Ђ
>broadcast_weights_11/assert_broadcastable/AssertGuard/IdentityIdentity5broadcast_weights_11/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
Ћ
$broadcast_weights_11/ones_like/ShapeShapepredictions_1/logistic?^broadcast_weights_11/assert_broadcastable/AssertGuard/Identity*
_output_shapes
:*
T0
Њ
$broadcast_weights_11/ones_like/ConstConst?^broadcast_weights_11/assert_broadcastable/AssertGuard/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Є
broadcast_weights_11/ones_likeFill$broadcast_weights_11/ones_like/Shape$broadcast_weights_11/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*
T0

broadcast_weights_11Mulbroadcast_weights_10broadcast_weights_11/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
a
Reshape_11/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
o

Reshape_11Reshapebroadcast_weights_11Reshape_11/shape*
T0*'
_output_shapes
:џџџџџџџџџ
b
Tile_15/multiplesConst*
_output_shapes
:*
valueB"Ш      *
dtype0
a
Tile_15Tile
Reshape_11Tile_15/multiples*(
_output_shapes
:Шџџџџџџџџџ*
T0
O
LogicalNot_4
LogicalNot	Greater_3*(
_output_shapes
:Шџџџџџџџџџ
M
LogicalNot_5
LogicalNotTile_14*(
_output_shapes
:Шџџџџџџџџџ
X
LogicalAnd_8
LogicalAndTile_14	Greater_3*(
_output_shapes
:Шџџџџџџџџџ
_
Cast_26CastLogicalAnd_8*(
_output_shapes
:Шџџџџџџџџџ*

DstT0*

SrcT0

R
mul_12MulCast_26Tile_15*(
_output_shapes
:Шџџџџџџџџџ*
T0
Z
Sum_16/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
U
Sum_16Summul_12Sum_16/reduction_indices*
T0*
_output_shapes	
:Ш
a
AssignAddVariableOp_16AssignAddVariableOphead/metrics/true_positives_3Sum_16*
dtype0

ReadVariableOp_18ReadVariableOphead/metrics/true_positives_3^AssignAddVariableOp_16*
dtype0*
_output_shapes	
:Ш
[
LogicalAnd_9
LogicalAndTile_14LogicalNot_4*(
_output_shapes
:Шџџџџџџџџџ
_
Cast_27CastLogicalAnd_9*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
R
mul_13MulCast_27Tile_15*(
_output_shapes
:Шџџџџџџџџџ*
T0
Z
Sum_17/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
U
Sum_17Summul_13Sum_17/reduction_indices*
T0*
_output_shapes	
:Ш
b
AssignAddVariableOp_17AssignAddVariableOphead/metrics/false_negatives_2Sum_17*
dtype0

ReadVariableOp_19ReadVariableOphead/metrics/false_negatives_2^AssignAddVariableOp_17*
_output_shapes	
:Ш*
dtype0
^
LogicalAnd_10
LogicalAndLogicalNot_5	Greater_3*(
_output_shapes
:Шџџџџџџџџџ
`
Cast_28CastLogicalAnd_10*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
R
mul_14MulCast_28Tile_15*(
_output_shapes
:Шџџџџџџџџџ*
T0
Z
Sum_18/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
U
Sum_18Summul_14Sum_18/reduction_indices*
T0*
_output_shapes	
:Ш
b
AssignAddVariableOp_18AssignAddVariableOphead/metrics/false_positives_2Sum_18*
dtype0

ReadVariableOp_20ReadVariableOphead/metrics/false_positives_2^AssignAddVariableOp_18*
dtype0*
_output_shapes	
:Ш
a
LogicalAnd_11
LogicalAndLogicalNot_5LogicalNot_4*(
_output_shapes
:Шџџџџџџџџџ
`
Cast_29CastLogicalAnd_11*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
R
mul_15MulCast_29Tile_15*
T0*(
_output_shapes
:Шџџџџџџџџџ
Z
Sum_19/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
U
Sum_19Summul_15Sum_19/reduction_indices*
T0*
_output_shapes	
:Ш
a
AssignAddVariableOp_19AssignAddVariableOphead/metrics/true_negatives_1Sum_19*
dtype0

ReadVariableOp_21ReadVariableOphead/metrics/true_negatives_1^AssignAddVariableOp_19*
dtype0*
_output_shapes	
:Ш
x
group_deps_3NoOp^AssignAddVariableOp_16^AssignAddVariableOp_17^AssignAddVariableOp_18^AssignAddVariableOp_19
d
div_no_nan/ReadVariableOpReadVariableOphead/metrics/total*
dtype0*
_output_shapes
: 
f
div_no_nan/ReadVariableOp_1ReadVariableOphead/metrics/count*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_36Identity
div_no_nan*
T0*
_output_shapes
: 
h
div_no_nan_1/ReadVariableOpReadVariableOphead/metrics/total_1*
dtype0*
_output_shapes
: 
j
div_no_nan_1/ReadVariableOp_1ReadVariableOphead/metrics/count_1*
dtype0*
_output_shapes
: 
u
div_no_nan_1DivNoNandiv_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_37Identitydiv_no_nan_1*
T0*
_output_shapes
: 
i
ReadVariableOp_22ReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
m
add_1/ReadVariableOpReadVariableOphead/metrics/false_positives*
dtype0*
_output_shapes
:
\
add_1AddV2ReadVariableOp_22add_1/ReadVariableOp*
T0*
_output_shapes
:
s
div_no_nan_2/ReadVariableOpReadVariableOphead/metrics/true_positives*
dtype0*
_output_shapes
:
a
div_no_nan_2DivNoNandiv_no_nan_2/ReadVariableOpadd_1*
T0*
_output_shapes
:
_
strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
a
strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
М
strided_slice_1StridedSlicediv_no_nan_2strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
I
Identity_38Identitystrided_slice_1*
T0*
_output_shapes
: 
k
ReadVariableOp_23ReadVariableOphead/metrics/true_positives_1*
dtype0*
_output_shapes
:
m
add_2/ReadVariableOpReadVariableOphead/metrics/false_negatives*
dtype0*
_output_shapes
:
\
add_2AddV2ReadVariableOp_23add_2/ReadVariableOp*
T0*
_output_shapes
:
u
div_no_nan_3/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
dtype0*
_output_shapes
:
a
div_no_nan_3DivNoNandiv_no_nan_3/ReadVariableOpadd_2*
T0*
_output_shapes
:
_
strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
М
strided_slice_2StridedSlicediv_no_nan_3strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
I
Identity_39Identitystrided_slice_2*
T0*
_output_shapes
: 
h
div_no_nan_4/ReadVariableOpReadVariableOphead/metrics/total_2*
dtype0*
_output_shapes
: 
j
div_no_nan_4/ReadVariableOp_1ReadVariableOphead/metrics/count_2*
dtype0*
_output_shapes
: 
u
div_no_nan_4DivNoNandiv_no_nan_4/ReadVariableOpdiv_no_nan_4/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_40Identitydiv_no_nan_4*
T0*
_output_shapes
: 
h
div_no_nan_5/ReadVariableOpReadVariableOphead/metrics/total_3*
dtype0*
_output_shapes
: 
j
div_no_nan_5/ReadVariableOp_1ReadVariableOphead/metrics/count_3*
dtype0*
_output_shapes
: 
u
div_no_nan_5DivNoNandiv_no_nan_5/ReadVariableOpdiv_no_nan_5/ReadVariableOp_1*
_output_shapes
: *
T0
F
Identity_41Identitydiv_no_nan_5*
T0*
_output_shapes
: 
h
div_no_nan_6/ReadVariableOpReadVariableOphead/metrics/count_3*
dtype0*
_output_shapes
: 
_
div_no_nan_6DivNoNanMaximumdiv_no_nan_6/ReadVariableOp*
T0*
_output_shapes
: 
F
Identity_42Identitydiv_no_nan_6*
T0*
_output_shapes
: 
l
ReadVariableOp_24ReadVariableOphead/metrics/true_positives_2*
dtype0*
_output_shapes	
:Ш
p
add_3/ReadVariableOpReadVariableOphead/metrics/false_negatives_1*
dtype0*
_output_shapes	
:Ш
]
add_3AddV2ReadVariableOp_24add_3/ReadVariableOp*
_output_shapes	
:Ш*
T0
v
div_no_nan_7/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
dtype0*
_output_shapes	
:Ш
b
div_no_nan_7DivNoNandiv_no_nan_7/ReadVariableOpadd_3*
T0*
_output_shapes	
:Ш
m
ReadVariableOp_25ReadVariableOphead/metrics/false_positives_1*
dtype0*
_output_shapes	
:Ш
m
add_4/ReadVariableOpReadVariableOphead/metrics/true_negatives*
dtype0*
_output_shapes	
:Ш
]
add_4AddV2ReadVariableOp_25add_4/ReadVariableOp*
T0*
_output_shapes	
:Ш
w
div_no_nan_8/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
dtype0*
_output_shapes	
:Ш
b
div_no_nan_8DivNoNandiv_no_nan_8/ReadVariableOpadd_4*
_output_shapes	
:Ш*
T0
_
strided_slice_3/stackConst*
_output_shapes
:*
valueB: *
dtype0
b
strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*
valueB:Ч
a
strided_slice_3/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Л
strided_slice_3StridedSlicediv_no_nan_7strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
Index0*
T0*

begin_mask*
_output_shapes	
:Ч
_
strided_slice_4/stackConst*
dtype0*
_output_shapes
:*
valueB:
a
strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_4/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Й
strided_slice_4StridedSlicediv_no_nan_7strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
T0*
Index0*
end_mask*
_output_shapes	
:Ч
V
add_5AddV2strided_slice_3strided_slice_4*
_output_shapes	
:Ч*
T0
N
	truediv/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
J
truedivRealDivadd_5	truediv/y*
T0*
_output_shapes	
:Ч
_
strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_5/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
a
strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Л
strided_slice_5StridedSlicediv_no_nan_8strided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
_output_shapes	
:Ч*

begin_mask*
Index0*
T0
_
strided_slice_6/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_6/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
a
strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Й
strided_slice_6StridedSlicediv_no_nan_8strided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
T
sub_1Substrided_slice_5strided_slice_6*
_output_shapes	
:Ч*
T0
C
Mul_16Mulsub_1truediv*
_output_shapes	
:Ч*
T0
R
Const_17Const*
valueB: *
dtype0*
_output_shapes
:
=
aucSumMul_16Const_17*
T0*
_output_shapes
: 
=
Identity_43Identityauc*
_output_shapes
: *
T0
l
ReadVariableOp_26ReadVariableOphead/metrics/true_positives_3*
dtype0*
_output_shapes	
:Ш
_
strided_slice_7/stackConst*
_output_shapes
:*
valueB: *
dtype0
b
strided_slice_7/stack_1Const*
_output_shapes
:*
valueB:Ч*
dtype0
a
strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Р
strided_slice_7StridedSliceReadVariableOp_26strided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
_output_shapes	
:Ч*

begin_mask*
Index0*
T0
l
ReadVariableOp_27ReadVariableOphead/metrics/true_positives_3*
dtype0*
_output_shapes	
:Ш
_
strided_slice_8/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_8/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
О
strided_slice_8StridedSliceReadVariableOp_27strided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
T0*
Index0*
end_mask*
_output_shapes	
:Ч
T
sub_2Substrided_slice_7strided_slice_8*
T0*
_output_shapes	
:Ч
l
ReadVariableOp_28ReadVariableOphead/metrics/true_positives_3*
dtype0*
_output_shapes	
:Ш
p
add_6/ReadVariableOpReadVariableOphead/metrics/false_positives_2*
dtype0*
_output_shapes	
:Ш
]
add_6AddV2ReadVariableOp_28add_6/ReadVariableOp*
T0*
_output_shapes	
:Ш
_
strided_slice_9/stackConst*
dtype0*
_output_shapes
:*
valueB: 
b
strided_slice_9/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
a
strided_slice_9/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Д
strided_slice_9StridedSliceadd_6strided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*
T0*
Index0*

begin_mask*
_output_shapes	
:Ч
`
strided_slice_10/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_10/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ж
strided_slice_10StridedSliceadd_6strided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
U
sub_3Substrided_slice_9strided_slice_10*
_output_shapes	
:Ч*
T0
P
Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
N
	Maximum_1Maximumsub_3Maximum_1/y*
T0*
_output_shapes	
:Ч
N

prec_slopeDivNoNansub_2	Maximum_1*
T0*
_output_shapes	
:Ч
l
ReadVariableOp_29ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_11/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_11/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_11/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
strided_slice_11StridedSliceReadVariableOp_29strided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
`
strided_slice_12/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_12/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_12/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ж
strided_slice_12StridedSliceadd_6strided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2*
T0*
Index0*
end_mask*
_output_shapes	
:Ч
Q
Mul_17Mul
prec_slopestrided_slice_12*
T0*
_output_shapes	
:Ч
L
sub_4Substrided_slice_11Mul_17*
T0*
_output_shapes	
:Ч
`
strided_slice_13/stackConst*
_output_shapes
:*
valueB: *
dtype0
c
strided_slice_13/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
b
strided_slice_13/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
И
strided_slice_13StridedSliceadd_6strided_slice_13/stackstrided_slice_13/stack_1strided_slice_13/stack_2*
_output_shapes	
:Ч*
Index0*
T0*

begin_mask
P
Greater_4/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Y
	Greater_4Greaterstrided_slice_13Greater_4/y*
_output_shapes	
:Ч*
T0
`
strided_slice_14/stackConst*
dtype0*
_output_shapes
:*
valueB:
b
strided_slice_14/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_14/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ж
strided_slice_14StridedSliceadd_6strided_slice_14/stackstrided_slice_14/stack_1strided_slice_14/stack_2*
T0*
Index0*
end_mask*
_output_shapes	
:Ч
P
Greater_5/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
Y
	Greater_5Greaterstrided_slice_14Greater_5/y*
T0*
_output_shapes	
:Ч
N
LogicalAnd_12
LogicalAnd	Greater_4	Greater_5*
_output_shapes	
:Ч
`
strided_slice_15/stackConst*
valueB: *
dtype0*
_output_shapes
:
c
strided_slice_15/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
b
strided_slice_15/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
И
strided_slice_15StridedSliceadd_6strided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2*
_output_shapes	
:Ч*
T0*
Index0*

begin_mask
`
strided_slice_16/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_16/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_16/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ж
strided_slice_16StridedSliceadd_6strided_slice_16/stackstrided_slice_16/stack_1strided_slice_16/stack_2*
_output_shapes	
:Ч*
T0*
Index0*
end_mask
P
Maximum_2/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Y
	Maximum_2Maximumstrided_slice_16Maximum_2/y*
_output_shapes	
:Ч*
T0
d
recall_relative_ratioDivNoNanstrided_slice_15	Maximum_2*
_output_shapes	
:Ч*
T0
`
strided_slice_17/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_17/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_17/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ж
strided_slice_17StridedSliceadd_6strided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
Z
ones_like/ShapeConst*
_output_shapes
:*
valueB:Ч*
dtype0
T
ones_like/ConstConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Y
	ones_likeFillones_like/Shapeones_like/Const*
T0*
_output_shapes	
:Ч
g
SelectSelectLogicalAnd_12recall_relative_ratio	ones_like*
T0*
_output_shapes	
:Ч
8
LogLogSelect*
T0*
_output_shapes	
:Ч
?
mul_18Mulsub_4Log*
T0*
_output_shapes	
:Ч
C
add_7AddV2sub_2mul_18*
T0*
_output_shapes	
:Ч
F
mul_19Mul
prec_slopeadd_7*
T0*
_output_shapes	
:Ч
l
ReadVariableOp_30ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_18/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_18/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_18/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
strided_slice_18StridedSliceReadVariableOp_30strided_slice_18/stackstrided_slice_18/stack_1strided_slice_18/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
m
ReadVariableOp_31ReadVariableOphead/metrics/false_negatives_2*
dtype0*
_output_shapes	
:Ш
`
strided_slice_19/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_19/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_19/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
strided_slice_19StridedSliceReadVariableOp_31strided_slice_19/stackstrided_slice_19/stack_1strided_slice_19/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
X
add_8AddV2strided_slice_18strided_slice_19*
T0*
_output_shapes	
:Ч
P
Maximum_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
N
	Maximum_3Maximumadd_8Maximum_3/y*
_output_shapes	
:Ч*
T0
U
pr_auc_incrementDivNoNanmul_19	Maximum_3*
T0*
_output_shapes	
:Ч
R
Const_18Const*
_output_shapes
:*
valueB: *
dtype0
V
interpolate_pr_aucSumpr_auc_incrementConst_18*
T0*
_output_shapes
: 
L
Identity_44Identityinterpolate_pr_auc*
T0*
_output_shapes
: 
f
div_no_nan_9/ReadVariableOpReadVariableOphead/metrics/total*
dtype0*
_output_shapes
: 
h
div_no_nan_9/ReadVariableOp_1ReadVariableOphead/metrics/count*
dtype0*
_output_shapes
: 
u
div_no_nan_9DivNoNandiv_no_nan_9/ReadVariableOpdiv_no_nan_9/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_45Identitydiv_no_nan_9*
_output_shapes
: *
T0
i
div_no_nan_10/ReadVariableOpReadVariableOphead/metrics/total_1*
dtype0*
_output_shapes
: 
k
div_no_nan_10/ReadVariableOp_1ReadVariableOphead/metrics/count_1*
dtype0*
_output_shapes
: 
x
div_no_nan_10DivNoNandiv_no_nan_10/ReadVariableOpdiv_no_nan_10/ReadVariableOp_1*
T0*
_output_shapes
: 
G
Identity_46Identitydiv_no_nan_10*
T0*
_output_shapes
: 
i
ReadVariableOp_32ReadVariableOphead/metrics/true_positives*
dtype0*
_output_shapes
:
m
add_9/ReadVariableOpReadVariableOphead/metrics/false_positives*
dtype0*
_output_shapes
:
\
add_9AddV2ReadVariableOp_32add_9/ReadVariableOp*
T0*
_output_shapes
:
t
div_no_nan_11/ReadVariableOpReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
c
div_no_nan_11DivNoNandiv_no_nan_11/ReadVariableOpadd_9*
T0*
_output_shapes
:
`
strided_slice_20/stackConst*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_20/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_20/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
С
strided_slice_20StridedSlicediv_no_nan_11strided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
J
Identity_47Identitystrided_slice_20*
T0*
_output_shapes
: 
k
ReadVariableOp_33ReadVariableOphead/metrics/true_positives_1*
dtype0*
_output_shapes
:
n
add_10/ReadVariableOpReadVariableOphead/metrics/false_negatives*
dtype0*
_output_shapes
:
^
add_10AddV2ReadVariableOp_33add_10/ReadVariableOp*
T0*
_output_shapes
:
v
div_no_nan_12/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
dtype0*
_output_shapes
:
d
div_no_nan_12DivNoNandiv_no_nan_12/ReadVariableOpadd_10*
T0*
_output_shapes
:
`
strided_slice_21/stackConst*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_21/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
b
strided_slice_21/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
С
strided_slice_21StridedSlicediv_no_nan_12strided_slice_21/stackstrided_slice_21/stack_1strided_slice_21/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
J
Identity_48Identitystrided_slice_21*
_output_shapes
: *
T0
i
div_no_nan_13/ReadVariableOpReadVariableOphead/metrics/total_2*
dtype0*
_output_shapes
: 
k
div_no_nan_13/ReadVariableOp_1ReadVariableOphead/metrics/count_2*
dtype0*
_output_shapes
: 
x
div_no_nan_13DivNoNandiv_no_nan_13/ReadVariableOpdiv_no_nan_13/ReadVariableOp_1*
T0*
_output_shapes
: 
G
Identity_49Identitydiv_no_nan_13*
T0*
_output_shapes
: 
i
div_no_nan_14/ReadVariableOpReadVariableOphead/metrics/total_3*
dtype0*
_output_shapes
: 
k
div_no_nan_14/ReadVariableOp_1ReadVariableOphead/metrics/count_3*
dtype0*
_output_shapes
: 
x
div_no_nan_14DivNoNandiv_no_nan_14/ReadVariableOpdiv_no_nan_14/ReadVariableOp_1*
_output_shapes
: *
T0
G
Identity_50Identitydiv_no_nan_14*
T0*
_output_shapes
: 
i
div_no_nan_15/ReadVariableOpReadVariableOphead/metrics/count_3*
dtype0*
_output_shapes
: 
a
div_no_nan_15DivNoNanMaximumdiv_no_nan_15/ReadVariableOp*
T0*
_output_shapes
: 
G
Identity_51Identitydiv_no_nan_15*
T0*
_output_shapes
: 
l
ReadVariableOp_34ReadVariableOphead/metrics/true_positives_2*
dtype0*
_output_shapes	
:Ш
q
add_11/ReadVariableOpReadVariableOphead/metrics/false_negatives_1*
dtype0*
_output_shapes	
:Ш
_
add_11AddV2ReadVariableOp_34add_11/ReadVariableOp*
_output_shapes	
:Ш*
T0
w
div_no_nan_16/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
dtype0*
_output_shapes	
:Ш
e
div_no_nan_16DivNoNandiv_no_nan_16/ReadVariableOpadd_11*
T0*
_output_shapes	
:Ш
m
ReadVariableOp_35ReadVariableOphead/metrics/false_positives_1*
dtype0*
_output_shapes	
:Ш
n
add_12/ReadVariableOpReadVariableOphead/metrics/true_negatives*
dtype0*
_output_shapes	
:Ш
_
add_12AddV2ReadVariableOp_35add_12/ReadVariableOp*
T0*
_output_shapes	
:Ш
x
div_no_nan_17/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:Ш*
dtype0
e
div_no_nan_17DivNoNandiv_no_nan_17/ReadVariableOpadd_12*
T0*
_output_shapes	
:Ш
`
strided_slice_22/stackConst*
valueB: *
dtype0*
_output_shapes
:
c
strided_slice_22/stack_1Const*
dtype0*
_output_shapes
:*
valueB:Ч
b
strided_slice_22/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Р
strided_slice_22StridedSlicediv_no_nan_16strided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2*
_output_shapes	
:Ч*

begin_mask*
T0*
Index0
`
strided_slice_23/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_23/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
b
strided_slice_23/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
О
strided_slice_23StridedSlicediv_no_nan_16strided_slice_23/stackstrided_slice_23/stack_1strided_slice_23/stack_2*
T0*
Index0*
end_mask*
_output_shapes	
:Ч
Y
add_13AddV2strided_slice_22strided_slice_23*
T0*
_output_shapes	
:Ч
P
truediv_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
O
	truediv_1RealDivadd_13truediv_1/y*
T0*
_output_shapes	
:Ч
`
strided_slice_24/stackConst*
valueB: *
dtype0*
_output_shapes
:
c
strided_slice_24/stack_1Const*
_output_shapes
:*
valueB:Ч*
dtype0
b
strided_slice_24/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Р
strided_slice_24StridedSlicediv_no_nan_17strided_slice_24/stackstrided_slice_24/stack_1strided_slice_24/stack_2*
T0*
Index0*

begin_mask*
_output_shapes	
:Ч
`
strided_slice_25/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_25/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
b
strided_slice_25/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
О
strided_slice_25StridedSlicediv_no_nan_17strided_slice_25/stackstrided_slice_25/stack_1strided_slice_25/stack_2*
T0*
Index0*
end_mask*
_output_shapes	
:Ч
V
sub_5Substrided_slice_24strided_slice_25*
_output_shapes	
:Ч*
T0
E
Mul_20Mulsub_5	truediv_1*
T0*
_output_shapes	
:Ч
R
Const_19Const*
valueB: *
dtype0*
_output_shapes
:
?
auc_1SumMul_20Const_19*
T0*
_output_shapes
: 
?
Identity_52Identityauc_1*
T0*
_output_shapes
: 
l
ReadVariableOp_36ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:Ш*
dtype0
`
strided_slice_26/stackConst*
valueB: *
dtype0*
_output_shapes
:
c
strided_slice_26/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
b
strided_slice_26/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
strided_slice_26StridedSliceReadVariableOp_36strided_slice_26/stackstrided_slice_26/stack_1strided_slice_26/stack_2*
T0*
Index0*

begin_mask*
_output_shapes	
:Ч
l
ReadVariableOp_37ReadVariableOphead/metrics/true_positives_3*
dtype0*
_output_shapes	
:Ш
`
strided_slice_27/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_27/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_27/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
strided_slice_27StridedSliceReadVariableOp_37strided_slice_27/stackstrided_slice_27/stack_1strided_slice_27/stack_2*
T0*
Index0*
end_mask*
_output_shapes	
:Ч
V
sub_6Substrided_slice_26strided_slice_27*
_output_shapes	
:Ч*
T0
l
ReadVariableOp_38ReadVariableOphead/metrics/true_positives_3*
dtype0*
_output_shapes	
:Ш
q
add_14/ReadVariableOpReadVariableOphead/metrics/false_positives_2*
_output_shapes	
:Ш*
dtype0
_
add_14AddV2ReadVariableOp_38add_14/ReadVariableOp*
T0*
_output_shapes	
:Ш
`
strided_slice_28/stackConst*
valueB: *
dtype0*
_output_shapes
:
c
strided_slice_28/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
b
strided_slice_28/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Й
strided_slice_28StridedSliceadd_14strided_slice_28/stackstrided_slice_28/stack_1strided_slice_28/stack_2*
_output_shapes	
:Ч*

begin_mask*
T0*
Index0
`
strided_slice_29/stackConst*
dtype0*
_output_shapes
:*
valueB:
b
strided_slice_29/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_29/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
З
strided_slice_29StridedSliceadd_14strided_slice_29/stackstrided_slice_29/stack_1strided_slice_29/stack_2*
T0*
Index0*
end_mask*
_output_shapes	
:Ч
V
sub_7Substrided_slice_28strided_slice_29*
T0*
_output_shapes	
:Ч
P
Maximum_4/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
N
	Maximum_4Maximumsub_7Maximum_4/y*
_output_shapes	
:Ч*
T0
P
prec_slope_1DivNoNansub_6	Maximum_4*
_output_shapes	
:Ч*
T0
l
ReadVariableOp_39ReadVariableOphead/metrics/true_positives_3*
dtype0*
_output_shapes	
:Ш
`
strided_slice_30/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_30/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
b
strided_slice_30/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Т
strided_slice_30StridedSliceReadVariableOp_39strided_slice_30/stackstrided_slice_30/stack_1strided_slice_30/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
`
strided_slice_31/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_31/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_31/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
З
strided_slice_31StridedSliceadd_14strided_slice_31/stackstrided_slice_31/stack_1strided_slice_31/stack_2*
end_mask*
_output_shapes	
:Ч*
Index0*
T0
S
Mul_21Mulprec_slope_1strided_slice_31*
T0*
_output_shapes	
:Ч
L
sub_8Substrided_slice_30Mul_21*
_output_shapes	
:Ч*
T0
`
strided_slice_32/stackConst*
valueB: *
dtype0*
_output_shapes
:
c
strided_slice_32/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
b
strided_slice_32/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Й
strided_slice_32StridedSliceadd_14strided_slice_32/stackstrided_slice_32/stack_1strided_slice_32/stack_2*
Index0*
T0*

begin_mask*
_output_shapes	
:Ч
P
Greater_6/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Y
	Greater_6Greaterstrided_slice_32Greater_6/y*
T0*
_output_shapes	
:Ч
`
strided_slice_33/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_33/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
b
strided_slice_33/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
З
strided_slice_33StridedSliceadd_14strided_slice_33/stackstrided_slice_33/stack_1strided_slice_33/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
P
Greater_7/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Y
	Greater_7Greaterstrided_slice_33Greater_7/y*
_output_shapes	
:Ч*
T0
N
LogicalAnd_13
LogicalAnd	Greater_6	Greater_7*
_output_shapes	
:Ч
`
strided_slice_34/stackConst*
valueB: *
dtype0*
_output_shapes
:
c
strided_slice_34/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
b
strided_slice_34/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Й
strided_slice_34StridedSliceadd_14strided_slice_34/stackstrided_slice_34/stack_1strided_slice_34/stack_2*

begin_mask*
Index0*
T0*
_output_shapes	
:Ч
`
strided_slice_35/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_35/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_35/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
З
strided_slice_35StridedSliceadd_14strided_slice_35/stackstrided_slice_35/stack_1strided_slice_35/stack_2*
T0*
Index0*
end_mask*
_output_shapes	
:Ч
P
Maximum_5/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Y
	Maximum_5Maximumstrided_slice_35Maximum_5/y*
T0*
_output_shapes	
:Ч
f
recall_relative_ratio_1DivNoNanstrided_slice_34	Maximum_5*
_output_shapes	
:Ч*
T0
`
strided_slice_36/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_36/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_36/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
З
strided_slice_36StridedSliceadd_14strided_slice_36/stackstrided_slice_36/stack_1strided_slice_36/stack_2*
_output_shapes	
:Ч*
T0*
Index0*
end_mask
\
ones_like_1/ShapeConst*
valueB:Ч*
dtype0*
_output_shapes
:
V
ones_like_1/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
_
ones_like_1Fillones_like_1/Shapeones_like_1/Const*
T0*
_output_shapes	
:Ч
m
Select_1SelectLogicalAnd_13recall_relative_ratio_1ones_like_1*
T0*
_output_shapes	
:Ч
<
Log_1LogSelect_1*
_output_shapes	
:Ч*
T0
A
mul_22Mulsub_8Log_1*
T0*
_output_shapes	
:Ч
D
add_15AddV2sub_6mul_22*
T0*
_output_shapes	
:Ч
I
mul_23Mulprec_slope_1add_15*
_output_shapes	
:Ч*
T0
l
ReadVariableOp_40ReadVariableOphead/metrics/true_positives_3*
dtype0*
_output_shapes	
:Ш
`
strided_slice_37/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_37/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_37/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Т
strided_slice_37StridedSliceReadVariableOp_40strided_slice_37/stackstrided_slice_37/stack_1strided_slice_37/stack_2*
T0*
Index0*
end_mask*
_output_shapes	
:Ч
m
ReadVariableOp_41ReadVariableOphead/metrics/false_negatives_2*
dtype0*
_output_shapes	
:Ш
`
strided_slice_38/stackConst*
_output_shapes
:*
valueB:*
dtype0
b
strided_slice_38/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_38/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Т
strided_slice_38StridedSliceReadVariableOp_41strided_slice_38/stackstrided_slice_38/stack_1strided_slice_38/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
Y
add_16AddV2strided_slice_37strided_slice_38*
T0*
_output_shapes	
:Ч
P
Maximum_6/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
O
	Maximum_6Maximumadd_16Maximum_6/y*
T0*
_output_shapes	
:Ч
W
pr_auc_increment_1DivNoNanmul_23	Maximum_6*
_output_shapes	
:Ч*
T0
R
Const_20Const*
_output_shapes
:*
valueB: *
dtype0
Z
interpolate_pr_auc_1Sumpr_auc_increment_1Const_20*
T0*
_output_shapes
: 
N
Identity_53Identityinterpolate_pr_auc_1*
_output_shapes
: *
T0
l
metric_op_wrapperConst^AssignAddVariableOp_1*
valueB *
dtype0*
_output_shapes
: 
n
metric_op_wrapper_1Const^AssignAddVariableOp_3*
valueB *
dtype0*
_output_shapes
: 
c
metric_op_wrapper_2Const^group_deps*
valueB *
dtype0*
_output_shapes
: 
e
metric_op_wrapper_3Const^group_deps_1*
dtype0*
_output_shapes
: *
valueB 
n
metric_op_wrapper_4Const^AssignAddVariableOp_9*
valueB *
dtype0*
_output_shapes
: 
o
metric_op_wrapper_5Const^AssignAddVariableOp_11*
valueB *
dtype0*
_output_shapes
: 
]
metric_op_wrapper_6Const^NoOp*
valueB *
dtype0*
_output_shapes
: 
e
metric_op_wrapper_7Const^group_deps_2*
valueB *
dtype0*
_output_shapes
: 
e
metric_op_wrapper_8Const^group_deps_3*
valueB *
dtype0*
_output_shapes
: 
Ъ
initNoOp^head/metrics/count/Assign^head/metrics/count_1/Assign^head/metrics/count_2/Assign^head/metrics/count_3/Assign$^head/metrics/false_negatives/Assign&^head/metrics/false_negatives_1/Assign&^head/metrics/false_negatives_2/Assign$^head/metrics/false_positives/Assign&^head/metrics/false_positives_1/Assign&^head/metrics/false_positives_2/Assign^head/metrics/total/Assign^head/metrics/total_1/Assign^head/metrics/total_2/Assign^head/metrics/total_3/Assign#^head/metrics/true_negatives/Assign%^head/metrics/true_negatives_1/Assign#^head/metrics/true_positives/Assign%^head/metrics/true_positives_1/Assign%^head/metrics/true_positives_2/Assign%^head/metrics/true_positives_3/Assign
ё
init_all_tablesNoOpj^transform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2l^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2

init_1NoOp
6
group_deps_4NoOp^init^init_1^init_all_tables
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
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_1ae2cb033779470caa728292d272b936/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
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
Е
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*й
valueЯBЬBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_stepB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights

save/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
џ	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices*dnn/hiddenlayer_0/bias/Read/ReadVariableOp,dnn/hiddenlayer_0/kernel/Read/ReadVariableOp*dnn/hiddenlayer_1/bias/Read/ReadVariableOp,dnn/hiddenlayer_1/kernel/Read/ReadVariableOp*dnn/hiddenlayer_2/bias/Read/ReadVariableOp,dnn/hiddenlayer_2/kernel/Read/ReadVariableOp*dnn/hiddenlayer_3/bias/Read/ReadVariableOp,dnn/hiddenlayer_3/kernel/Read/ReadVariableOp#dnn/logits/bias/Read/ReadVariableOp%dnn/logits/kernel/Read/ReadVariableOpglobal_step/Read/ReadVariableOp4linear/linear_model/bias_weights/Read/ReadVariableOp:linear/linear_model/company_xf/weights/Read/ReadVariableOpClinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOpDlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp?linear/linear_model/payment_type_xf/weights/Read/ReadVariableOpBlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOpClinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOpAlinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOpBlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOpClinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp"/device:CPU:0*#
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
И
save/RestoreV2/tensor_namesConst"/device:CPU:0*й
valueЯBЬBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_stepB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights*
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
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
_output_shapes
:*
T0
_
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
c
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
_output_shapes
:*
T0
a
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
_output_shapes
:*
T0
c
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
_output_shapes
:*
T0
a
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
c
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
a
save/AssignVariableOp_6AssignVariableOpdnn/hiddenlayer_3/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
c
save/AssignVariableOp_7AssignVariableOpdnn/hiddenlayer_3/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_8AssignVariableOpdnn/logits/biassave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
]
save/AssignVariableOp_9AssignVariableOpdnn/logits/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0	
X
save/AssignVariableOp_10AssignVariableOpglobal_stepsave/Identity_11*
dtype0	
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
m
save/AssignVariableOp_11AssignVariableOp linear/linear_model/bias_weightssave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
_output_shapes
:*
T0
s
save/AssignVariableOp_12AssignVariableOp&linear/linear_model/company_xf/weightssave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
|
save/AssignVariableOp_13AssignVariableOp/linear/linear_model/dropoff_latitude_xf/weightssave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
}
save/AssignVariableOp_14AssignVariableOp0linear/linear_model/dropoff_longitude_xf/weightssave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
x
save/AssignVariableOp_15AssignVariableOp+linear/linear_model/payment_type_xf/weightssave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
{
save/AssignVariableOp_16AssignVariableOp.linear/linear_model/pickup_latitude_xf/weightssave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
|
save/AssignVariableOp_17AssignVariableOp/linear/linear_model/pickup_longitude_xf/weightssave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
_output_shapes
:*
T0
z
save/AssignVariableOp_18AssignVariableOp-linear/linear_model/trip_start_day_xf/weightssave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
{
save/AssignVariableOp_19AssignVariableOp.linear/linear_model/trip_start_hour_xf/weightssave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
_output_shapes
:*
T0
|
save/AssignVariableOp_20AssignVariableOp/linear/linear_model/trip_start_month_xf/weightssave/Identity_21*
dtype0
Х
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shardЋ
Е
z
zero_fraction_cond_false_135297
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes
:	ђ*
T0o
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes
:	ђ*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes
:	ђ:  

Ћ
Acheck_label_range_assert_less_equal_Assert_AssertGuard_true_141074
0identity_check_label_range_assert_less_equal_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 n
IdentityIdentity0identity_check_label_range_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : : :  
я
a
0zero_fraction_total_zero_zero_count_1_true_13432
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: : :  
я
a
0zero_fraction_total_zero_zero_count_5_true_13604
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
Ъ
ў
$has_valid_nonscalar_shape_true_14671U
Qhas_invalid_dims_expanddims_broadcast_weights_9_assert_broadcastable_values_shapeX
Thas_invalid_dims_expanddims_1_broadcast_weights_9_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
j
has_invalid_dims/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџЯ
has_invalid_dims/ExpandDims
ExpandDimsQhas_invalid_dims_expanddims_broadcast_weights_9_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
T0*
_output_shapes

:q
 has_invalid_dims/ones_like/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:b
 has_invalid_dims/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: Ё
has_invalid_dims/ones_likeFill)has_invalid_dims/ones_like/Shape:output:0)has_invalid_dims/ones_like/Const:output:0*
_output_shapes

:*
T0^
has_invalid_dims/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: Ч
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
T0*
N*
_output_shapes

:l
!has_invalid_dims/ExpandDims_1/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: ж
has_invalid_dims/ExpandDims_1
ExpandDimsThas_invalid_dims_expanddims_1_broadcast_weights_9_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
_output_shapes

:*
T0ю
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
T0*
_output_shapes
: T
has_invalid_dims/xConst*
value	B : *
dtype0*
_output_shapes
: m
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T0"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: :  : : 
Ы
b
zero_fraction_cond_true_134427
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes

:
*
T0n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:
*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0"
castCast:y:0*
_input_shapes

:
:  
ў
О
1zero_fraction_total_zero_zero_count_1_false_13433P
Lzero_fraction_readvariableop_linear_linear_model_dropoff_latitude_xf_weights+
'tofloat_zero_fraction_total_size_size_1	
mulЉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_dropoff_latitude_xf_weights*
dtype0*
_output_shapes

:
T
zero_fraction/SizeConst*
dtype0	*
_output_shapes
: *
value	B	 R
_
zero_fraction/LessEqual/yConst*
dtype0	*
_output_shapes
: *
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
_output_shapes
: *
T0	У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*1
else_branch"R 
zero_fraction_cond_false_13443*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_13442*
Tin
2*
_output_shapes
: e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
_output_shapes
: *
T0	
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*
_output_shapes
: *

DstT0*

SrcT0	|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*
_output_shapes
: *

DstT0*

SrcT0	Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_1*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
Ч
ь
"dnn_zero_fraction_cond_false_121781
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџdw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџd*

DstT0	*

SrcT0
d
count_nonzero/ConstConst*
_output_shapes
:*
valueB"       *
dtype0y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 4
OptionalNoneOptionalNone*
_output_shapes
: "'
optionalnoneOptionalNone:optional:0"1
optionalfromvalueOptionalFromValue:optional:0"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0*&
_input_shapes
:џџџџџџџџџd:  
С
н
#dnn_zero_fraction_1_cond_true_122471
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*'
_output_shapes
:џџџџџџџџџF*
T0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџF*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
_output_shapes
: *
Toutput_types
2
p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: ~
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: "5
optionalfromvalue_1OptionalFromValue_1:optional:0"
castCast:y:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"1
optionalfromvalueOptionalFromValue:optional:0*&
_input_shapes
:џџџџџџџџџF:  
ш
Б
/zero_fraction_total_zero_zero_count_false_13390G
Czero_fraction_readvariableop_linear_linear_model_company_xf_weights)
%tofloat_zero_fraction_total_size_size	
mulЁ
zero_fraction/ReadVariableOpReadVariableOpCzero_fraction_readvariableop_linear_linear_model_company_xf_weights*
dtype0*
_output_shapes
:	ђU
zero_fraction/SizeConst*
value
B	 Rђ*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
dtype0	*
_output_shapes
: *
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
_output_shapes
: *
T0	У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
_output_shapes
: *
Tin
2*1
else_branch"R 
zero_fraction_cond_false_13400*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*0
then_branch!R
zero_fraction_cond_true_13399*
Tcond0
e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*
_output_shapes
: *

DstT0*

SrcT0	|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: f
ToFloatCast%tofloat_zero_fraction_total_size_size*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: : :  
я

1assert_less_equal_1_Assert_AssertGuard_true_14316$
 identity_assert_less_equal_1_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 ^
IdentityIdentity identity_assert_less_equal_1_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
ј

5assert_greater_equal_1_Assert_AssertGuard_false_14293%
!assert_assert_greater_equal_1_all

assert_cast_10
assert_cast_11_x
identity
f
Assert/data_0Const*)
value B Bpredictions must be >= 0*
dtype0*
_output_shapes
: 
Assert/data_1Const*L
valueCBA B;Condition x >= y did not hold element-wise:x (Cast_10:0) = *
dtype0*
_output_shapes
: `
Assert/data_3Const*#
valueB By (Cast_11/x:0) = *
dtype0*
_output_shapes
: У
AssertAssert!assert_assert_greater_equal_1_allAssert/data_0:output:0Assert/data_1:output:0assert_cast_10Assert/data_3:output:0assert_cast_11_x*
T	
2*
_output_shapes
 a
IdentityIdentity!assert_assert_greater_equal_1_all^Assert*
_output_shapes
: *
T0
"
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
н
С
Bcheck_label_range_assert_less_equal_Assert_AssertGuard_false_141082
.assert_check_label_range_assert_less_equal_all

assert_tofloat"
assert_check_label_range_const
identity
m
Assert/data_0Const*0
value'B% BLabels must be <= n_classes - 1*
dtype0*
_output_shapes
: 
Assert/data_1Const*L
valueCBA B;Condition x <= y did not hold element-wise:x (ToFloat:0) = *
dtype0*
_output_shapes
: n
Assert/data_3Const*
_output_shapes
: *1
value(B& B y (check_label_range/Const:0) = *
dtype0о
AssertAssert.assert_check_label_range_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0assert_tofloatAssert/data_3:output:0assert_check_label_range_const*
T	
2*
_output_shapes
 n
IdentityIdentity.assert_check_label_range_assert_less_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : : :  
х
з
@broadcast_weights_11_assert_broadcastable_AssertGuard_true_14899N
Jidentity_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityJidentity_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: :  : : : 
Б
Ѕ
%has_valid_nonscalar_shape_false_14672
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: : : :  
Ъ
ў
$has_valid_nonscalar_shape_true_14503U
Qhas_invalid_dims_expanddims_broadcast_weights_7_assert_broadcastable_values_shapeX
Thas_invalid_dims_expanddims_1_broadcast_weights_7_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
j
has_invalid_dims/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: Я
has_invalid_dims/ExpandDims
ExpandDimsQhas_invalid_dims_expanddims_broadcast_weights_7_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
_output_shapes

:*
T0q
 has_invalid_dims/ones_like/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:b
 has_invalid_dims/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: Ё
has_invalid_dims/ones_likeFill)has_invalid_dims/ones_like/Shape:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:^
has_invalid_dims/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: Ч
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
T0*
N*
_output_shapes

:l
!has_invalid_dims/ExpandDims_1/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: ж
has_invalid_dims/ExpandDims_1
ExpandDimsThas_invalid_dims_expanddims_1_broadcast_weights_7_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
_output_shapes

:*
T0ю
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b*
T0
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
_output_shapes
: *
T0T
has_invalid_dims/xConst*
value	B : *
dtype0*
_output_shapes
: m
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T0"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: : :  : 
Ј
ё
Dbroadcast_weights_11_assert_broadcastable_is_valid_shape_false_14850
placeholder
`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_values_ranka
]has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_weights_rankT
Phas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_values_shapeU
Qhas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity

&has_valid_nonscalar_shape/is_same_rankEqual\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_values_rank]has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_weights_rank*
T0*
_output_shapes
: 
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Phas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_values_shapeQhas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*
Tcond0
*7
then_branch(R&
$has_valid_nonscalar_shape_true_14857*
Tin
2
*
_output_shapes
: *8
else_branch)R'
%has_valid_nonscalar_shape_false_14858s
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: "Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : :::  : : : : 
У
У
Mhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_true_13882@
<identity_head_losses_check_label_range_assert_less_equal_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 z
IdentityIdentity<identity_head_losses_check_label_range_assert_less_equal_all^NoOp*
_output_shapes
: *
T0
"
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : :  : 
т
е
?broadcast_weights_5_assert_broadcastable_AssertGuard_true_14447M
Iidentity_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityIidentity_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: : : :  : 
С

zero_fraction_1_cond_true_13783c
_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sum
cast	X
count_nonzero/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    г
count_nonzero/NotEqualNotEqual_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sumcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
_output_shapes
:*
valueB"       *
dtype0y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*&
_input_shapes
:џџџџџџџџџ:  
я
a
0zero_fraction_total_zero_zero_count_2_true_13475
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
Ю
b
zero_fraction_cond_true_135287
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	ђo
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes
:	ђ*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0"
castCast:y:0*
_input_shapes
:	ђ:  
С
ъ
$dnn_zero_fraction_4_cond_false_12457-
)count_nonzero_notequal_dnn_logits_biasadd
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*'
_output_shapes
:џџџџџџџџџ*
T0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
_output_shapes
: *
Toutput_types
2t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 4
OptionalNoneOptionalNone*
_output_shapes
: "1
optionalfromvalueOptionalFromValue:optional:0"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:џџџџџџџџџ:  
Д
Х
Vcheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_14132F
Bassert_check_label_range_assert_non_negative_assert_less_equal_all

assert_tofloat
identity
a
Assert/data_0Const*$
valueB BLabels must be >= 0*
dtype0*
_output_shapes
: y
Assert/data_1Const*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: ^
Assert/data_2Const*
dtype0*
_output_shapes
: *!
valueB Bx (ToFloat:0) = б
AssertAssertBassert_check_label_range_assert_non_negative_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_tofloat*
T
2*
_output_shapes
 
IdentityIdentityBassert_check_label_range_assert_non_negative_assert_less_equal_all^Assert*
_output_shapes
: *
T0
"
identityIdentity:output:0*(
_input_shapes
: :џџџџџџџџџ:  : 
Ы
b
zero_fraction_cond_true_135717
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes

:
*
T0n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:
*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*
_input_shapes

:
:  
о

0assert_less_equal_Assert_AssertGuard_false_14225 
assert_assert_less_equal_all

assert_cast_4
assert_cast_6_x
identity
f
Assert/data_0Const*)
value B Bpredictions must be <= 1*
dtype0*
_output_shapes
: 
Assert/data_1Const*K
valueBB@ B:Condition x <= y did not hold element-wise:x (Cast_4:0) = *
dtype0*
_output_shapes
: _
Assert/data_3Const*"
valueB By (Cast_6/x:0) = *
dtype0*
_output_shapes
: М
AssertAssertassert_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0assert_cast_4Assert/data_3:output:0assert_cast_6_x*
T	
2*
_output_shapes
 \
IdentityIdentityassert_assert_less_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : :  : 
є
ф
@broadcast_weights_5_assert_broadcastable_AssertGuard_false_14448K
Gassert_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity
A
=assert_broadcast_weights_5_assert_broadcastable_weights_shape@
<assert_broadcast_weights_5_assert_broadcastable_values_shape=
9assert_broadcast_weights_5_assert_broadcastable_is_scalar

identity
u
Assert/data_0Const*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: \
Assert/data_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: c
Assert/data_2Const*&
valueB Bbroadcast_weights_4:0*
dtype0*
_output_shapes
: [
Assert/data_4Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: f
Assert/data_5Const*)
value B Bpredictions_1/logistic:0*
dtype0*
_output_shapes
: X
Assert/data_7Const*
_output_shapes
: *
valueB B
is_scalar=*
dtype0Ы
AssertAssertGassert_broadcast_weights_5_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0=assert_broadcast_weights_5_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0<assert_broadcast_weights_5_assert_broadcastable_values_shapeAssert/data_7:output:09assert_broadcast_weights_5_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 
IdentityIdentityGassert_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: :  : : : 
џ
щ
Abroadcast_weights_11_assert_broadcastable_AssertGuard_false_14900L
Hassert_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity
B
>assert_broadcast_weights_11_assert_broadcastable_weights_shapeA
=assert_broadcast_weights_11_assert_broadcastable_values_shape>
:assert_broadcast_weights_11_assert_broadcastable_is_scalar

identity
u
Assert/data_0Const*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.\
Assert/data_1Const*
_output_shapes
: *
valueB Bweights.shape=*
dtype0d
Assert/data_2Const*
_output_shapes
: *'
valueB Bbroadcast_weights_10:0*
dtype0[
Assert/data_4Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: f
Assert/data_5Const*
_output_shapes
: *)
value B Bpredictions_1/logistic:0*
dtype0X
Assert/data_7Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: Я
AssertAssertHassert_broadcast_weights_11_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0>assert_broadcast_weights_11_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0=assert_broadcast_weights_11_assert_broadcastable_values_shapeAssert/data_7:output:0:assert_broadcast_weights_11_assert_broadcastable_is_scalar*
_output_shapes
 *
T
2	

IdentityIdentityHassert_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity^Assert*
_output_shapes
: *
T0
"
identityIdentity:output:0*#
_input_shapes
: ::: : : :  : 
Щ
ю
$dnn_zero_fraction_1_cond_false_122481
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџFw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџF*

DstT0	d
count_nonzero/ConstConst*
_output_shapes
:*
valueB"       *
dtype0y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 4
OptionalNoneOptionalNone*
_output_shapes
: "5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0"1
optionalfromvalueOptionalFromValue:optional:0"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0*&
_input_shapes
:џџџџџџџџџF:  
Ы
b
zero_fraction_cond_true_136577
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes

:*
T0n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
_output_shapes
:*
valueB"       *
dtype0y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*
_input_shapes

::  
е
ё
Nhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_false_13883>
:assert_head_losses_check_label_range_assert_less_equal_all

assert_head_losses_tofloat.
*assert_head_losses_check_label_range_const
identity
m
Assert/data_0Const*0
value'B% BLabels must be <= n_classes - 1*
dtype0*
_output_shapes
: 
Assert/data_1Const*
dtype0*
_output_shapes
: *X
valueOBM BGCondition x <= y did not hold element-wise:x (head/losses/ToFloat:0) = z
Assert/data_3Const*
_output_shapes
: *=
value4B2 B,y (head/losses/check_label_range/Const:0) = *
dtype0
AssertAssert:assert_head_losses_check_label_range_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0assert_head_losses_tofloatAssert/data_3:output:0*assert_head_losses_check_label_range_const*
T	
2*
_output_shapes
 z
IdentityIdentity:assert_head_losses_check_label_range_assert_less_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
Д

Bbroadcast_weights_5_assert_broadcastable_is_valid_shape_true_143978
4broadcast_weights_5_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_36
2broadcast_weights_5_assert_broadcastable_is_scalar
"j
2broadcast_weights_5_assert_broadcastable_is_scalar4broadcast_weights_5_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: : : : :  
В
z
zero_fraction_cond_false_137447
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::  
Ы
b
zero_fraction_cond_true_134857
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:
*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*
_input_shapes

:
:  
В
z
zero_fraction_cond_false_135727
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:
*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:  
В
z
zero_fraction_cond_false_136587
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes

:*
T0n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::  
я
a
0zero_fraction_total_zero_zero_count_7_true_13690
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: : :  
В
z
zero_fraction_cond_false_137017
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:*

DstT0	*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0	"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::  
Б
Ѕ
%has_valid_nonscalar_shape_false_14406
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: : : :  
Ы
b
zero_fraction_cond_true_137007
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:*

DstT0d
count_nonzero/ConstConst*
dtype0*
_output_shapes
:*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0"
castCast:y:0*
_input_shapes

::  
т
е
?broadcast_weights_7_assert_broadcastable_AssertGuard_true_14545M
Iidentity_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityIidentity_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: :  : : : 
ј

4assert_greater_equal_2_Assert_AssertGuard_true_14599'
#identity_assert_greater_equal_2_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 a
IdentityIdentity#identity_assert_greater_equal_2_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : : :  

ь
Cbroadcast_weights_9_assert_broadcastable_is_valid_shape_false_14664
placeholder
_
[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_values_rank`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_weights_rankS
Ohas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_values_shapeT
Phas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity

&has_valid_nonscalar_shape/is_same_rankEqual[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_values_rank\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_weights_rank*
_output_shapes
: *
T0
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Ohas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_values_shapePhas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*8
else_branch)R'
%has_valid_nonscalar_shape_false_14672*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*7
then_branch(R&
$has_valid_nonscalar_shape_true_14671*
Tcond0
*
_output_shapes
: *
Tin
2
s
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: "Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : ::: : : : :  

ь
Cbroadcast_weights_5_assert_broadcastable_is_valid_shape_false_14398
placeholder
_
[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_values_rank`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_weights_rankS
Ohas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_values_shapeT
Phas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity

&has_valid_nonscalar_shape/is_same_rankEqual[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_values_rank\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_weights_rank*
T0*
_output_shapes
: 
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Ohas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_values_shapePhas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*7
then_branch(R&
$has_valid_nonscalar_shape_true_14405*
Tcond0
*
Tin
2
*
_output_shapes
: *8
else_branch)R'
%has_valid_nonscalar_shape_false_14406s
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: "Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : :::  : : : : 
ј

4assert_greater_equal_1_Assert_AssertGuard_true_14292'
#identity_assert_greater_equal_1_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 a
IdentityIdentity#identity_assert_greater_equal_1_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : : :  
ъ

3assert_greater_equal_Assert_AssertGuard_false_14201#
assert_assert_greater_equal_all

assert_cast_4
assert_cast_5_x
identity
f
Assert/data_0Const*)
value B Bpredictions must be >= 0*
dtype0*
_output_shapes
: 
Assert/data_1Const*
dtype0*
_output_shapes
: *K
valueBB@ B:Condition x >= y did not hold element-wise:x (Cast_4:0) = _
Assert/data_3Const*"
valueB By (Cast_5/x:0) = *
dtype0*
_output_shapes
: П
AssertAssertassert_assert_greater_equal_allAssert/data_0:output:0Assert/data_1:output:0assert_cast_4Assert/data_3:output:0assert_cast_5_x*
_output_shapes
 *
T	
2_
IdentityIdentityassert_assert_greater_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
Е
z
zero_fraction_cond_false_134007
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes
:	ђ*
T0o
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes
:	ђ*

DstT0	*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0	"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes
:	ђ:  
я
a
0zero_fraction_total_zero_zero_count_6_true_13647
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
њ
М
1zero_fraction_total_zero_zero_count_6_false_13648N
Jzero_fraction_readvariableop_linear_linear_model_trip_start_day_xf_weights+
'tofloat_zero_fraction_total_size_size_6	
mulЇ
zero_fraction/ReadVariableOpReadVariableOpJzero_fraction_readvariableop_linear_linear_model_trip_start_day_xf_weights*
dtype0*
_output_shapes

:T
zero_fraction/SizeConst*
value	B	 R*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
_output_shapes
: *
Tin
2*1
else_branch"R 
zero_fraction_cond_false_13658*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_13657e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*
_output_shapes
: *

DstT0*

SrcT0	|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
_output_shapes
: *
T0q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
_output_shapes
: *
T0h
ToFloatCast'tofloat_zero_fraction_total_size_size_6*
_output_shapes
: *

DstT0*

SrcT0	C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
Й
й
#dnn_zero_fraction_4_cond_true_12456-
)count_nonzero_notequal_dnn_logits_biasadd
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
_output_shapes
: *
Toutput_types
2
p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: ~
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
_output_shapes
: *
Toutput_types
2"1
optionalfromvalueOptionalFromValue:optional:0"
castCast:y:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџ:  
э
_
.zero_fraction_total_zero_zero_count_true_13389
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
Ю
b
zero_fraction_cond_true_133997
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes
:	ђ*
T0o
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes
:	ђ*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*
_input_shapes
:	ђ:  
С
Р
Ucheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_14131H
Didentity_check_label_range_assert_non_negative_assert_less_equal_all

placeholder
identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityDidentity_check_label_range_assert_non_negative_assert_less_equal_all^NoOp*
_output_shapes
: *
T0
"
identityIdentity:output:0*(
_input_shapes
: :џџџџџџџџџ:  : 
ь

2assert_less_equal_1_Assert_AssertGuard_false_14317"
assert_assert_less_equal_1_all

assert_cast_10
assert_cast_12_x
identity
f
Assert/data_0Const*)
value B Bpredictions must be <= 1*
dtype0*
_output_shapes
: 
Assert/data_1Const*L
valueCBA B;Condition x <= y did not hold element-wise:x (Cast_10:0) = *
dtype0*
_output_shapes
: `
Assert/data_3Const*#
valueB By (Cast_12/x:0) = *
dtype0*
_output_shapes
: Р
AssertAssertassert_assert_less_equal_1_allAssert/data_0:output:0Assert/data_1:output:0assert_cast_10Assert/data_3:output:0assert_cast_12_x*
T	
2*
_output_shapes
 ^
IdentityIdentityassert_assert_less_equal_1_all^Assert*
_output_shapes
: *
T0
"
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
Б
Ѕ
%has_valid_nonscalar_shape_false_14858
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: : : :  
є
ф
@broadcast_weights_9_assert_broadcastable_AssertGuard_false_14714K
Gassert_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity
A
=assert_broadcast_weights_9_assert_broadcastable_weights_shape@
<assert_broadcast_weights_9_assert_broadcastable_values_shape=
9assert_broadcast_weights_9_assert_broadcastable_is_scalar

identity
u
Assert/data_0Const*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: \
Assert/data_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: c
Assert/data_2Const*
dtype0*
_output_shapes
: *&
valueB Bbroadcast_weights_8:0[
Assert/data_4Const*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=f
Assert/data_5Const*)
value B Bpredictions_1/logistic:0*
dtype0*
_output_shapes
: X
Assert/data_7Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: Ы
AssertAssertGassert_broadcast_weights_9_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0=assert_broadcast_weights_9_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0<assert_broadcast_weights_9_assert_broadcastable_values_shapeAssert/data_7:output:09assert_broadcast_weights_9_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 
IdentityIdentityGassert_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity^Assert*
_output_shapes
: *
T0
"
identityIdentity:output:0*#
_input_shapes
: ::: :  : : : 
я
a
0zero_fraction_total_zero_zero_count_3_true_13518
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: : :  
ў
О
1zero_fraction_total_zero_zero_count_8_false_13734P
Lzero_fraction_readvariableop_linear_linear_model_trip_start_month_xf_weights+
'tofloat_zero_fraction_total_size_size_8	
mulЉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_trip_start_month_xf_weights*
dtype0*
_output_shapes

:T
zero_fraction/SizeConst*
value	B	 R*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_13743*
Tin
2*
_output_shapes
: *1
else_branch"R 
zero_fraction_cond_false_13744*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
_output_shapes
: *
T0	
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*
_output_shapes
: *

DstT0*

SrcT0	Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_8*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
Ы
b
zero_fraction_cond_true_136147
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:
*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0"
castCast:y:0*
_input_shapes

:
:  

Ђ
2assert_less_equal_2_Assert_AssertGuard_false_14624"
assert_assert_less_equal_2_all
!
assert_predictions_1_logistic
assert_cast_17_x
identity
f
Assert/data_0Const*)
value B Bpredictions must be <= 1*
dtype0*
_output_shapes
: 
Assert/data_1Const*[
valueRBP BJCondition x <= y did not hold element-wise:x (predictions_1/logistic:0) = *
dtype0*
_output_shapes
: `
Assert/data_3Const*#
valueB By (Cast_17/x:0) = *
dtype0*
_output_shapes
: Я
AssertAssertassert_assert_less_equal_2_allAssert/data_0:output:0Assert/data_1:output:0assert_predictions_1_logisticAssert/data_3:output:0assert_cast_17_x*
T	
2*
_output_shapes
 ^
IdentityIdentityassert_assert_less_equal_2_all^Assert*
_output_shapes
: *
T0
"
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : : :  
Ѕ
Ј
5assert_greater_equal_3_Assert_AssertGuard_false_14786%
!assert_assert_greater_equal_3_all
!
assert_predictions_1_logistic
assert_cast_23_x
identity
f
Assert/data_0Const*)
value B Bpredictions must be >= 0*
dtype0*
_output_shapes
: 
Assert/data_1Const*[
valueRBP BJCondition x >= y did not hold element-wise:x (predictions_1/logistic:0) = *
dtype0*
_output_shapes
: `
Assert/data_3Const*#
valueB By (Cast_23/x:0) = *
dtype0*
_output_shapes
: в
AssertAssert!assert_assert_greater_equal_3_allAssert/data_0:output:0Assert/data_1:output:0assert_predictions_1_logisticAssert/data_3:output:0assert_cast_23_x*
_output_shapes
 *
T	
2a
IdentityIdentity!assert_assert_greater_equal_3_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
я
a
0zero_fraction_total_zero_zero_count_4_true_13561
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
я

1assert_less_equal_3_Assert_AssertGuard_true_14809$
 identity_assert_less_equal_3_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 ^
IdentityIdentity identity_assert_less_equal_3_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
Й

Cbroadcast_weights_11_assert_broadcastable_is_valid_shape_true_148499
5broadcast_weights_11_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_37
3broadcast_weights_11_assert_broadcastable_is_scalar
"l
3broadcast_weights_11_assert_broadcastable_is_scalar5broadcast_weights_11_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: : : :  : 
ј

4assert_greater_equal_3_Assert_AssertGuard_true_14785'
#identity_assert_greater_equal_3_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 a
IdentityIdentity#identity_assert_greater_equal_3_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
т
е
?broadcast_weights_9_assert_broadcastable_AssertGuard_true_14713M
Iidentity_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityIidentity_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0*#
_input_shapes
: ::: :  : : : 
С
н
#dnn_zero_fraction_3_cond_true_123871
-count_nonzero_notequal_dnn_hiddenlayer_3_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_3_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџ"*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
_output_shapes
: *
Toutput_types
2t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: ~
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: "
castCast:y:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"1
optionalfromvalueOptionalFromValue:optional:0*&
_input_shapes
:џџџџџџџџџ":  
щ

/assert_less_equal_Assert_AssertGuard_true_14224"
identity_assert_less_equal_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 \
IdentityIdentityidentity_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 

щ
bhead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_13907R
Nassert_head_losses_check_label_range_assert_non_negative_assert_less_equal_all

assert_head_losses_tofloat
identity
a
Assert/data_0Const*
dtype0*
_output_shapes
: *$
valueB BLabels must be >= 0y
Assert/data_1Const*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: j
Assert/data_2Const*
_output_shapes
: *-
value$B" Bx (head/losses/ToFloat:0) = *
dtype0щ
AssertAssertNassert_head_losses_check_label_range_assert_non_negative_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_head_losses_tofloat*
T
2*
_output_shapes
 
IdentityIdentityNassert_head_losses_check_label_range_assert_non_negative_assert_less_equal_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0*(
_input_shapes
: :џџџџџџџџџ:  : 
Ѕ
Ј
5assert_greater_equal_2_Assert_AssertGuard_false_14600%
!assert_assert_greater_equal_2_all
!
assert_predictions_1_logistic
assert_cast_16_x
identity
f
Assert/data_0Const*
dtype0*
_output_shapes
: *)
value B Bpredictions must be >= 0
Assert/data_1Const*
_output_shapes
: *[
valueRBP BJCondition x >= y did not hold element-wise:x (predictions_1/logistic:0) = *
dtype0`
Assert/data_3Const*#
valueB By (Cast_16/x:0) = *
dtype0*
_output_shapes
: в
AssertAssert!assert_assert_greater_equal_2_allAssert/data_0:output:0Assert/data_1:output:0assert_predictions_1_logisticAssert/data_3:output:0assert_cast_16_x*
_output_shapes
 *
T	
2a
IdentityIdentity!assert_assert_greater_equal_2_all^Assert*
T0
*
_output_shapes
: "
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
Ј
Ј
 zero_fraction_1_cond_false_13784c
_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sum
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: г
count_nonzero/NotEqualNotEqual_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sumcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*&
_input_shapes
:џџџџџџџџџ:  
Ъ
ў
$has_valid_nonscalar_shape_true_14405U
Qhas_invalid_dims_expanddims_broadcast_weights_5_assert_broadcastable_values_shapeX
Thas_invalid_dims_expanddims_1_broadcast_weights_5_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
j
has_invalid_dims/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: Я
has_invalid_dims/ExpandDims
ExpandDimsQhas_invalid_dims_expanddims_broadcast_weights_5_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
T0*
_output_shapes

:q
 has_invalid_dims/ones_like/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:b
 has_invalid_dims/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: Ё
has_invalid_dims/ones_likeFill)has_invalid_dims/ones_like/Shape:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:^
has_invalid_dims/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0Ч
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
_output_shapes

:*
T0*
Nl
!has_invalid_dims/ExpandDims_1/dimConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0ж
has_invalid_dims/ExpandDims_1
ExpandDimsThas_invalid_dims_expanddims_1_broadcast_weights_5_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
_output_shapes

:*
T0ю
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
_output_shapes
: *
T0T
has_invalid_dims/xConst*
dtype0*
_output_shapes
: *
value	B : m
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T0"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: :  : : 
х
и
ahead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_13906T
Pidentity_head_losses_check_label_range_assert_non_negative_assert_less_equal_all

placeholder
identity
"
NoOpNoOp*
_output_shapes
 
IdentityIdentityPidentity_head_losses_check_label_range_assert_non_negative_assert_less_equal_all^NoOp*
_output_shapes
: *
T0
"
identityIdentity:output:0*(
_input_shapes
: :џџџџџџџџџ:  : 
Б
Ѕ
%has_valid_nonscalar_shape_false_14504
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: :  : : 
В
z
zero_fraction_cond_false_134867
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:
*

DstT0	*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:  

П
1zero_fraction_total_zero_zero_count_2_false_13476Q
Mzero_fraction_readvariableop_linear_linear_model_dropoff_longitude_xf_weights+
'tofloat_zero_fraction_total_size_size_2	
mulЊ
zero_fraction/ReadVariableOpReadVariableOpMzero_fraction_readvariableop_linear_linear_model_dropoff_longitude_xf_weights*
dtype0*
_output_shapes

:
T
zero_fraction/SizeConst*
value	B	 R
*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
dtype0	*
_output_shapes
: *
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
_lower_using_switch_merge(*
Tout
2	*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_13485*
Tin
2*
_output_shapes
: *1
else_branch"R 
zero_fraction_cond_false_13486*
output_shapes
: e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
_output_shapes
: *
T0	
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*
_output_shapes
: *

DstT0*

SrcT0	|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
_output_shapes
: *
T0q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_2*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
ќ
Н
1zero_fraction_total_zero_zero_count_4_false_13562O
Kzero_fraction_readvariableop_linear_linear_model_pickup_latitude_xf_weights+
'tofloat_zero_fraction_total_size_size_4	
mulЈ
zero_fraction/ReadVariableOpReadVariableOpKzero_fraction_readvariableop_linear_linear_model_pickup_latitude_xf_weights*
dtype0*
_output_shapes

:
T
zero_fraction/SizeConst*
dtype0	*
_output_shapes
: *
value	B	 R
_
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*0
then_branch!R
zero_fraction_cond_true_13571*
Tcond0
*
Tin
2*
_output_shapes
: *1
else_branch"R 
zero_fraction_cond_false_13572*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
_output_shapes
: *
T0	
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*
_output_shapes
: *

DstT0*

SrcT0	|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
_output_shapes
: *
T0q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
_output_shapes
: *
T0h
ToFloatCast'tofloat_zero_fraction_total_size_size_4*
_output_shapes
: *

DstT0*

SrcT0	C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
я

1assert_less_equal_2_Assert_AssertGuard_true_14623$
 identity_assert_less_equal_2_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 ^
IdentityIdentity identity_assert_less_equal_2_all^NoOp*
_output_shapes
: *
T0
"
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
ђ

2assert_greater_equal_Assert_AssertGuard_true_14200%
!identity_assert_greater_equal_all

placeholder
placeholder_1
identity
"
NoOpNoOp*
_output_shapes
 _
IdentityIdentity!identity_assert_greater_equal_all^NoOp*
_output_shapes
: *
T0
"
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: : : :  

Ђ
2assert_less_equal_3_Assert_AssertGuard_false_14810"
assert_assert_less_equal_3_all
!
assert_predictions_1_logistic
assert_cast_24_x
identity
f
Assert/data_0Const*
_output_shapes
: *)
value B Bpredictions must be <= 1*
dtype0
Assert/data_1Const*
dtype0*
_output_shapes
: *[
valueRBP BJCondition x <= y did not hold element-wise:x (predictions_1/logistic:0) = `
Assert/data_3Const*#
valueB By (Cast_24/x:0) = *
dtype0*
_output_shapes
: Я
AssertAssertassert_assert_less_equal_3_allAssert/data_0:output:0Assert/data_1:output:0assert_predictions_1_logisticAssert/data_3:output:0assert_cast_24_x*
T	
2*
_output_shapes
 ^
IdentityIdentityassert_assert_less_equal_3_all^Assert*
_output_shapes
: *
T0
"
identityIdentity:output:0**
_input_shapes
: :џџџџџџџџџ: :  : : 
ў
О
1zero_fraction_total_zero_zero_count_5_false_13605P
Lzero_fraction_readvariableop_linear_linear_model_pickup_longitude_xf_weights+
'tofloat_zero_fraction_total_size_size_5	
mulЉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_pickup_longitude_xf_weights*
dtype0*
_output_shapes

:
T
zero_fraction/SizeConst*
dtype0	*
_output_shapes
: *
value	B	 R
_
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
_output_shapes
: *
Tin
2*1
else_branch"R 
zero_fraction_cond_false_13615*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_13614e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
_output_shapes
: *
T0	
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_5*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
ќ
Н
1zero_fraction_total_zero_zero_count_7_false_13691O
Kzero_fraction_readvariableop_linear_linear_model_trip_start_hour_xf_weights+
'tofloat_zero_fraction_total_size_size_7	
mulЈ
zero_fraction/ReadVariableOpReadVariableOpKzero_fraction_readvariableop_linear_linear_model_trip_start_hour_xf_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
value	B	 R*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
_output_shapes
: *
Tin
2*1
else_branch"R 
zero_fraction_cond_false_13701*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*0
then_branch!R
zero_fraction_cond_true_13700*
Tcond0
e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
_output_shapes
: *
T0	
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_7*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
Щ
ю
$dnn_zero_fraction_2_cond_false_123181
-count_nonzero_notequal_dnn_hiddenlayer_2_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_2_relucount_nonzero/zeros:output:0*'
_output_shapes
:џџџџџџџџџ0*
T0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ0*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 4
OptionalNoneOptionalNone*
_output_shapes
: "'
optionalnoneOptionalNone:optional:0"1
optionalfromvalueOptionalFromValue:optional:0"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0*&
_input_shapes
:џџџџџџџџџ0:  
Д

Bbroadcast_weights_9_assert_broadcastable_is_valid_shape_true_146638
4broadcast_weights_9_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_36
2broadcast_weights_9_assert_broadcastable_is_scalar
"j
2broadcast_weights_9_assert_broadcastable_is_scalar4broadcast_weights_9_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: : : : :  
ј
ф
@broadcast_weights_7_assert_broadcastable_AssertGuard_false_14546K
Gassert_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity
A
=assert_broadcast_weights_7_assert_broadcastable_weights_shape@
<assert_broadcast_weights_7_assert_broadcastable_values_shape=
9assert_broadcast_weights_7_assert_broadcastable_is_scalar

identity
u
Assert/data_0Const*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: \
Assert/data_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: c
Assert/data_2Const*&
valueB Bbroadcast_weights_6:0*
dtype0*
_output_shapes
: [
Assert/data_4Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: j
Assert/data_5Const*-
value$B" Bcheck_label_range/Identity:0*
dtype0*
_output_shapes
: X
Assert/data_7Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: Ы
AssertAssertGassert_broadcast_weights_7_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0=assert_broadcast_weights_7_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0<assert_broadcast_weights_7_assert_broadcastable_values_shapeAssert/data_7:output:09assert_broadcast_weights_7_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 
IdentityIdentityGassert_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity^Assert*
_output_shapes
: *
T0
"
identityIdentity:output:0*#
_input_shapes
: ::: : : : :  
В
z
zero_fraction_cond_false_134437
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:
*

DstT0	*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:  
С
н
#dnn_zero_fraction_2_cond_true_123171
-count_nonzero_notequal_dnn_hiddenlayer_2_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_2_relucount_nonzero/zeros:output:0*'
_output_shapes
:џџџџџџџџџ0*
T0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ0*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
_output_shapes
: *
Toutput_types
2v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
_output_shapes
: *
Toutput_types
2~
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: "1
optionalfromvalueOptionalFromValue:optional:0"
castCast:y:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџ0:  
я
a
0zero_fraction_total_zero_zero_count_8_true_13733
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
Д

Bbroadcast_weights_7_assert_broadcastable_is_valid_shape_true_144958
4broadcast_weights_7_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_36
2broadcast_weights_7_assert_broadcastable_is_scalar
"j
2broadcast_weights_7_assert_broadcastable_is_scalar4broadcast_weights_7_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: : : :  : 
В
z
zero_fraction_cond_false_136157
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:
*

DstT0	d
count_nonzero/ConstConst*
_output_shapes
:*
valueB"       *
dtype0y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:  
Ы
b
zero_fraction_cond_true_137437
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0"
castCast:y:0*
_input_shapes

::  
Щ
ю
$dnn_zero_fraction_3_cond_false_123881
-count_nonzero_notequal_dnn_hiddenlayer_3_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_3_relucount_nonzero/zeros:output:0*'
_output_shapes
:џџџџџџџџџ"*
T0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџ"*

DstT0	*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 4
OptionalNoneOptionalNone*
_output_shapes
: "'
optionalnoneOptionalNone:optional:0"1
optionalfromvalueOptionalFromValue:optional:0"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0*&
_input_shapes
:џџџџџџџџџ":  
П
л
!dnn_zero_fraction_cond_true_121771
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*'
_output_shapes
:џџџџџџџџџd*
T0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџd*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
dtype0*
_output_shapes
:*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
_output_shapes
: *
Toutput_types
2~
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: "1
optionalfromvalueOptionalFromValue:optional:0"
castCast:y:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџd:  
Ю

$has_valid_nonscalar_shape_true_14857V
Rhas_invalid_dims_expanddims_broadcast_weights_11_assert_broadcastable_values_shapeY
Uhas_invalid_dims_expanddims_1_broadcast_weights_11_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
j
has_invalid_dims/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: а
has_invalid_dims/ExpandDims
ExpandDimsRhas_invalid_dims_expanddims_broadcast_weights_11_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
_output_shapes

:*
T0q
 has_invalid_dims/ones_like/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:b
 has_invalid_dims/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: Ё
has_invalid_dims/ones_likeFill)has_invalid_dims/ones_like/Shape:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:^
has_invalid_dims/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0Ч
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
T0*
N*
_output_shapes

:l
!has_invalid_dims/ExpandDims_1/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: з
has_invalid_dims/ExpandDims_1
ExpandDimsUhas_invalid_dims_expanddims_1_broadcast_weights_11_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
_output_shapes

:*
T0ю
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
set_operationa-b*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
T0*
_output_shapes
: T
has_invalid_dims/xConst*
value	B : *
dtype0*
_output_shapes
: m
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T0"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: : : :  

ь
Cbroadcast_weights_7_assert_broadcastable_is_valid_shape_false_14496
placeholder
_
[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_values_rank`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_weights_rankS
Ohas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_values_shapeT
Phas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity

&has_valid_nonscalar_shape/is_same_rankEqual[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_values_rank\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_weights_rank*
_output_shapes
: *
T0
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Ohas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_values_shapePhas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
*
Tcond0
*7
then_branch(R&
$has_valid_nonscalar_shape_true_14503*
_output_shapes
: *
Tin
2
*8
else_branch)R'
%has_valid_nonscalar_shape_false_14504s
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
_output_shapes
: *
T0
"Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : ::: :  : : : 
ј
К
1zero_fraction_total_zero_zero_count_3_false_13519L
Hzero_fraction_readvariableop_linear_linear_model_payment_type_xf_weights+
'tofloat_zero_fraction_total_size_size_3	
mulІ
zero_fraction/ReadVariableOpReadVariableOpHzero_fraction_readvariableop_linear_linear_model_payment_type_xf_weights*
dtype0*
_output_shapes
:	ђU
zero_fraction/SizeConst*
value
B	 Rђ*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
_lower_using_switch_merge(*
Tout
2	*0
then_branch!R
zero_fraction_cond_true_13528*
Tcond0
*
_output_shapes
: *
Tin
2*1
else_branch"R 
zero_fraction_cond_false_13529*
output_shapes
: e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
_output_shapes
: *
T0	
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
_output_shapes
: *
T0h
ToFloatCast'tofloat_zero_fraction_total_size_size_3*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : "w<
save/Const:0save/Identity:0save/restore_all (5 @F8" 
	variables §
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
Ј
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_2/kernel:0dnn/hiddenlayer_2/kernel/Assign.dnn/hiddenlayer_2/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_2/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_2/bias:0dnn/hiddenlayer_2/bias/Assign,dnn/hiddenlayer_2/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_2/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_3/kernel:0dnn/hiddenlayer_3/kernel/Assign.dnn/hiddenlayer_3/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_3/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_3/bias:0dnn/hiddenlayer_3/bias/Assign,dnn/hiddenlayer_3/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_3/bias/Initializer/zeros:08

dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08
з
(linear/linear_model/company_xf/weights:0-linear/linear_model/company_xf/weights/Assign<linear/linear_model/company_xf/weights/Read/ReadVariableOp:0(2:linear/linear_model/company_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/dropoff_latitude_xf/weights:06linear/linear_model/dropoff_latitude_xf/weights/AssignElinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros:08
џ
2linear/linear_model/dropoff_longitude_xf/weights:07linear/linear_model/dropoff_longitude_xf/weights/AssignFlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp:0(2Dlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros:08
ы
-linear/linear_model/payment_type_xf/weights:02linear/linear_model/payment_type_xf/weights/AssignAlinear/linear_model/payment_type_xf/weights/Read/ReadVariableOp:0(2?linear/linear_model/payment_type_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/pickup_latitude_xf/weights:05linear/linear_model/pickup_latitude_xf/weights/AssignDlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/pickup_latitude_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/pickup_longitude_xf/weights:06linear/linear_model/pickup_longitude_xf/weights/AssignElinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros:08
ѓ
/linear/linear_model/trip_start_day_xf/weights:04linear/linear_model/trip_start_day_xf/weights/AssignClinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOp:0(2Alinear/linear_model/trip_start_day_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/trip_start_hour_xf/weights:05linear/linear_model/trip_start_hour_xf/weights/AssignDlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/trip_start_hour_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/trip_start_month_xf/weights:06linear/linear_model/trip_start_month_xf/weights/AssignElinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/trip_start_month_xf/weights/Initializer/zeros:08
П
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08")
asset_filepaths

Const:0
	Const_1:0"Ќ
tft_schema_override_tensor

Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0
Qtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose:0
Stransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose:0
Stransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose:0
Stransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose:0"ё
table_initializerл
и
itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
ktransform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"v
'evaluation_only/label_graph/example_refK*I
G
)type.googleapis.com/tensorflow.TensorInfo
range:0џџџџџџџџџ"'
saved_model_main_op

group_deps_4"Ћ
trainable_variables
Ј
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_2/kernel:0dnn/hiddenlayer_2/kernel/Assign.dnn/hiddenlayer_2/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_2/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_2/bias:0dnn/hiddenlayer_2/bias/Assign,dnn/hiddenlayer_2/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_2/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_3/kernel:0dnn/hiddenlayer_3/kernel/Assign.dnn/hiddenlayer_3/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_3/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_3/bias:0dnn/hiddenlayer_3/bias/Assign,dnn/hiddenlayer_3/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_3/bias/Initializer/zeros:08

dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08
з
(linear/linear_model/company_xf/weights:0-linear/linear_model/company_xf/weights/Assign<linear/linear_model/company_xf/weights/Read/ReadVariableOp:0(2:linear/linear_model/company_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/dropoff_latitude_xf/weights:06linear/linear_model/dropoff_latitude_xf/weights/AssignElinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros:08
џ
2linear/linear_model/dropoff_longitude_xf/weights:07linear/linear_model/dropoff_longitude_xf/weights/AssignFlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp:0(2Dlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros:08
ы
-linear/linear_model/payment_type_xf/weights:02linear/linear_model/payment_type_xf/weights/AssignAlinear/linear_model/payment_type_xf/weights/Read/ReadVariableOp:0(2?linear/linear_model/payment_type_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/pickup_latitude_xf/weights:05linear/linear_model/pickup_latitude_xf/weights/AssignDlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/pickup_latitude_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/pickup_longitude_xf/weights:06linear/linear_model/pickup_longitude_xf/weights/AssignElinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros:08
ѓ
/linear/linear_model/trip_start_day_xf/weights:04linear/linear_model/trip_start_day_xf/weights/AssignClinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOp:0(2Alinear/linear_model/trip_start_day_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/trip_start_hour_xf/weights:05linear/linear_model/trip_start_hour_xf/weights/AssignDlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/trip_start_hour_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/trip_start_month_xf/weights:06linear/linear_model/trip_start_month_xf/weights/AssignElinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/trip_start_month_xf/weights/Initializer/zeros:08
П
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08"п
	summariesб
Ю
+dnn/hiddenlayer_0/fraction_of_zero_values:0
dnn/hiddenlayer_0/activation:0
+dnn/hiddenlayer_1/fraction_of_zero_values:0
dnn/hiddenlayer_1/activation:0
+dnn/hiddenlayer_2/fraction_of_zero_values:0
dnn/hiddenlayer_2/activation:0
+dnn/hiddenlayer_3/fraction_of_zero_values:0
dnn/hiddenlayer_3/activation:0
$dnn/logits/fraction_of_zero_values:0
dnn/logits/activation:0
bias:0
fraction_of_zero_weights:0
 linear/fraction_of_zero_values:0
linear/activation:0"3
%evaluation_only/metadata/tfma_version

0.15.4"
'evaluation_only/label_graph/labels/noded*b
`
)type.googleapis.com/tensorflow.TensorInfo3
transform/transform/Select:0	џџџџџџџџџ"р 
)evaluation_only/label_graph/features/nodeВ *Џ 
_
)type.googleapis.com/tensorflow.TensorInfo2
ParseExample/ParseExample:0џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
ParseExample/ParseExample:1	џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
ParseExample/ParseExample:2	џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
ParseExample/ParseExample:3џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
ParseExample/ParseExample:4џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
ParseExample/ParseExample:5џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
ParseExample/ParseExample:6џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
ParseExample/ParseExample:7	џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
ParseExample/ParseExample:8	џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
ParseExample/ParseExample:9џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
ParseExample/ParseExample:10џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
ParseExample/ParseExample:11џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
ParseExample/ParseExample:12џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
ParseExample/ParseExample:13	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
ParseExample/ParseExample:14	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
ParseExample/ParseExample:15	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
ParseExample/ParseExample:16	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
ParseExample/ParseExample:17	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfop
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoW
@transform/transform/inputs/inputs/F_pickup_community_area_copy:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoR
;transform/transform/inputs/inputs/F_trip_start_month_copy:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoU
>transform/transform/inputs/inputs/F_pickup_census_tract_copy:0	џџџџџџџџџ
}
)type.googleapis.com/tensorflow.TensorInfoP
9transform/transform/inputs/inputs/F_trip_start_day_copy:0	џџџџџџџџџ
~
)type.googleapis.com/tensorflow.TensorInfoQ
:transform/transform/inputs/inputs/F_trip_start_hour_copy:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfo_
Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/SelectV2:0џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoa
Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectV2:0џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoj
Stransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoj
Stransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
transform/transform/Select:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoh
Qtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoj
Stransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoa
Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectV2:0џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfor
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoX
Atransform/transform/inputs/inputs/F_dropoff_community_area_copy:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoV
?transform/transform/inputs/inputs/F_dropoff_census_tract_copy:0	џџџџџџџџџ"Р
metric_variablesЋЈ
Б
head/metrics/false_positives:0#head/metrics/false_positives/Assign2head/metrics/false_positives/Read/ReadVariableOp:0(20head/metrics/false_positives/Initializer/zeros:0@H

head/metrics/count:0head/metrics/count/Assign(head/metrics/count/Read/ReadVariableOp:0(2&head/metrics/count/Initializer/zeros:0@H

head/metrics/total_2:0head/metrics/total_2/Assign*head/metrics/total_2/Read/ReadVariableOp:0(2(head/metrics/total_2/Initializer/zeros:0@H
Е
head/metrics/true_negatives_1:0$head/metrics/true_negatives_1/Assign3head/metrics/true_negatives_1/Read/ReadVariableOp:0(21head/metrics/true_negatives_1/Initializer/zeros:0@H
Е
head/metrics/true_positives_1:0$head/metrics/true_positives_1/Assign3head/metrics/true_positives_1/Read/ReadVariableOp:0(21head/metrics/true_positives_1/Initializer/zeros:0@H
Й
 head/metrics/false_positives_1:0%head/metrics/false_positives_1/Assign4head/metrics/false_positives_1/Read/ReadVariableOp:0(22head/metrics/false_positives_1/Initializer/zeros:0@H
Й
 head/metrics/false_negatives_1:0%head/metrics/false_negatives_1/Assign4head/metrics/false_negatives_1/Read/ReadVariableOp:0(22head/metrics/false_negatives_1/Initializer/zeros:0@H
Й
 head/metrics/false_positives_2:0%head/metrics/false_positives_2/Assign4head/metrics/false_positives_2/Read/ReadVariableOp:0(22head/metrics/false_positives_2/Initializer/zeros:0@H

head/metrics/total:0head/metrics/total/Assign(head/metrics/total/Read/ReadVariableOp:0(2&head/metrics/total/Initializer/zeros:0@H

head/metrics/total_1:0head/metrics/total_1/Assign*head/metrics/total_1/Read/ReadVariableOp:0(2(head/metrics/total_1/Initializer/zeros:0@H

head/metrics/count_2:0head/metrics/count_2/Assign*head/metrics/count_2/Read/ReadVariableOp:0(2(head/metrics/count_2/Initializer/zeros:0@H
Б
head/metrics/false_negatives:0#head/metrics/false_negatives/Assign2head/metrics/false_negatives/Read/ReadVariableOp:0(20head/metrics/false_negatives/Initializer/zeros:0@H

head/metrics/total_3:0head/metrics/total_3/Assign*head/metrics/total_3/Read/ReadVariableOp:0(2(head/metrics/total_3/Initializer/zeros:0@H
­
head/metrics/true_negatives:0"head/metrics/true_negatives/Assign1head/metrics/true_negatives/Read/ReadVariableOp:0(2/head/metrics/true_negatives/Initializer/zeros:0@H
Е
head/metrics/true_positives_3:0$head/metrics/true_positives_3/Assign3head/metrics/true_positives_3/Read/ReadVariableOp:0(21head/metrics/true_positives_3/Initializer/zeros:0@H

head/metrics/count_1:0head/metrics/count_1/Assign*head/metrics/count_1/Read/ReadVariableOp:0(2(head/metrics/count_1/Initializer/zeros:0@H

head/metrics/count_3:0head/metrics/count_3/Assign*head/metrics/count_3/Read/ReadVariableOp:0(2(head/metrics/count_3/Initializer/zeros:0@H
Й
 head/metrics/false_negatives_2:0%head/metrics/false_negatives_2/Assign4head/metrics/false_negatives_2/Read/ReadVariableOp:0(22head/metrics/false_negatives_2/Initializer/zeros:0@H
Е
head/metrics/true_positives_2:0$head/metrics/true_positives_2/Assign3head/metrics/true_positives_2/Read/ReadVariableOp:0(21head/metrics/true_positives_2/Initializer/zeros:0@H
­
head/metrics/true_positives:0"head/metrics/true_positives/Assign1head/metrics/true_positives/Read/ReadVariableOp:0(2/head/metrics/true_positives/Initializer/zeros:0@H"є
saved_model_assetsн*к
i
+type.googleapis.com/tensorflow.AssetFileDef:
	
Const:0-vocab_compute_and_apply_vocabulary_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_1:0/vocab_compute_and_apply_vocabulary_1_vocabulary"
tft_schema_override_minя
ь
Ftransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0
Htransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1:0
3transform/transform/bucketize/apply_buckets/Const:0
5transform/transform/bucketize_1/apply_buckets/Const:0
5transform/transform/bucketize_2/apply_buckets/Const:0
5transform/transform/bucketize_3/apply_buckets/Const:0"Ѓ
tft_schema_override_max

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub:0
Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
;transform/transform/bucketize/apply_buckets/strided_slice:0
=transform/transform/bucketize_1/apply_buckets/strided_slice:0
=transform/transform/bucketize_2/apply_buckets/strided_slice:0
=transform/transform/bucketize_3/apply_buckets/strided_slice:0"П
local_variablesЋЈ
Б
head/metrics/false_positives:0#head/metrics/false_positives/Assign2head/metrics/false_positives/Read/ReadVariableOp:0(20head/metrics/false_positives/Initializer/zeros:0@H

head/metrics/count:0head/metrics/count/Assign(head/metrics/count/Read/ReadVariableOp:0(2&head/metrics/count/Initializer/zeros:0@H

head/metrics/total_2:0head/metrics/total_2/Assign*head/metrics/total_2/Read/ReadVariableOp:0(2(head/metrics/total_2/Initializer/zeros:0@H
Е
head/metrics/true_negatives_1:0$head/metrics/true_negatives_1/Assign3head/metrics/true_negatives_1/Read/ReadVariableOp:0(21head/metrics/true_negatives_1/Initializer/zeros:0@H
Е
head/metrics/true_positives_1:0$head/metrics/true_positives_1/Assign3head/metrics/true_positives_1/Read/ReadVariableOp:0(21head/metrics/true_positives_1/Initializer/zeros:0@H
Й
 head/metrics/false_positives_1:0%head/metrics/false_positives_1/Assign4head/metrics/false_positives_1/Read/ReadVariableOp:0(22head/metrics/false_positives_1/Initializer/zeros:0@H
Й
 head/metrics/false_negatives_1:0%head/metrics/false_negatives_1/Assign4head/metrics/false_negatives_1/Read/ReadVariableOp:0(22head/metrics/false_negatives_1/Initializer/zeros:0@H
Й
 head/metrics/false_positives_2:0%head/metrics/false_positives_2/Assign4head/metrics/false_positives_2/Read/ReadVariableOp:0(22head/metrics/false_positives_2/Initializer/zeros:0@H

head/metrics/total:0head/metrics/total/Assign(head/metrics/total/Read/ReadVariableOp:0(2&head/metrics/total/Initializer/zeros:0@H

head/metrics/total_1:0head/metrics/total_1/Assign*head/metrics/total_1/Read/ReadVariableOp:0(2(head/metrics/total_1/Initializer/zeros:0@H

head/metrics/count_2:0head/metrics/count_2/Assign*head/metrics/count_2/Read/ReadVariableOp:0(2(head/metrics/count_2/Initializer/zeros:0@H
Б
head/metrics/false_negatives:0#head/metrics/false_negatives/Assign2head/metrics/false_negatives/Read/ReadVariableOp:0(20head/metrics/false_negatives/Initializer/zeros:0@H

head/metrics/total_3:0head/metrics/total_3/Assign*head/metrics/total_3/Read/ReadVariableOp:0(2(head/metrics/total_3/Initializer/zeros:0@H
­
head/metrics/true_negatives:0"head/metrics/true_negatives/Assign1head/metrics/true_negatives/Read/ReadVariableOp:0(2/head/metrics/true_negatives/Initializer/zeros:0@H
Е
head/metrics/true_positives_3:0$head/metrics/true_positives_3/Assign3head/metrics/true_positives_3/Read/ReadVariableOp:0(21head/metrics/true_positives_3/Initializer/zeros:0@H

head/metrics/count_1:0head/metrics/count_1/Assign*head/metrics/count_1/Read/ReadVariableOp:0(2(head/metrics/count_1/Initializer/zeros:0@H

head/metrics/count_3:0head/metrics/count_3/Assign*head/metrics/count_3/Read/ReadVariableOp:0(2(head/metrics/count_3/Initializer/zeros:0@H
Й
 head/metrics/false_negatives_2:0%head/metrics/false_negatives_2/Assign4head/metrics/false_negatives_2/Read/ReadVariableOp:0(22head/metrics/false_negatives_2/Initializer/zeros:0@H
Е
head/metrics/true_positives_2:0$head/metrics/true_positives_2/Assign3head/metrics/true_positives_2/Read/ReadVariableOp:0(21head/metrics/true_positives_2/Initializer/zeros:0@H
­
head/metrics/true_positives:0"head/metrics/true_positives/Assign1head/metrics/true_positives/Read/ReadVariableOp:0(2/head/metrics/true_positives/Initializer/zeros:0@H"
(evaluation_only/label_graph/features/keyхт
$Bytes$company
$Bytes$dropoff_census_tract
$Bytes$dropoff_community_area
$Bytes$dropoff_latitude
$Bytes$dropoff_longitude
$Bytes$fare
$Bytes$payment_type
$Bytes$pickup_census_tract
$Bytes$pickup_community_area
$Bytes$pickup_latitude
$Bytes$pickup_longitude
$Bytes$tips
$Bytes$trip_miles
$Bytes$trip_seconds
$Bytes$trip_start_day
$Bytes$trip_start_hour
$Bytes$trip_start_month
$Bytes$trip_start_timestamp
$Bytes$payment_type_xf
$Bytes$pickup_community_area_xf
$Bytes$trip_start_month_xf
$Bytes$pickup_census_tract_xf
$Bytes$trip_start_day_xf
$Bytes$trip_start_hour_xf
$Bytes$trip_miles_xf
$Bytes$trip_seconds_xf
$Bytes$pickup_longitude_xf
$Bytes$dropoff_latitude_xf
$Bytes$tips_xf
$Bytes$pickup_latitude_xf
$Bytes$dropoff_longitude_xf
$Bytes$fare_xf
$Bytes$company_xf
 $Bytes$dropoff_community_area_xf
$Bytes$dropoff_census_tract_xf"=
&evaluation_only/label_graph/labels/key
$Bytes$__labels**
eval*
~
"features/dropoff_community_area_xfX
Atransform/transform/inputs/inputs/F_dropoff_community_area_copy:0	џџџџџџџџџ
}
features/trip_seconds_xfa
Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectV2:0џџџџџџџџџ

features/pickup_longitude_xfj
Stransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose:0	џџџџџџџџџ
<
inputs/examples)
input_example_tensor:0џџџџџџџџџ
J
features/trip_miles3
ParseExample/ParseExample:12џџџџџџџџџ
n
features/trip_start_day_xfP
9transform/transform/inputs/inputs/F_trip_start_day_copy:0	џџџџџџџџџ

features/dropoff_longitude_xfj
Stransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose:0	џџџџџџџџџ
L
features/trip_seconds3
ParseExample/ParseExample:13	џџџџџџџџџ
u
features/fare_xfa
Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectV2:0џџџџџџџџџ
T
features/pickup_community_area2
ParseExample/ParseExample:8	џџџџџџџџџ
y
features/trip_miles_xf_
Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/SelectV2:0џџџџџџџџџ
z
 features/dropoff_census_tract_xfV
?transform/transform/inputs/inputs/F_dropoff_census_tract_copy:0	џџџџџџџџџ
R
features/pickup_census_tract2
ParseExample/ParseExample:7	џџџџџџџџџ
r
features/trip_start_month_xfR
;transform/transform/inputs/inputs/F_trip_start_month_copy:0	џџџџџџџџџ
F
features/company2
ParseExample/ParseExample:0џџџџџџџџџ

features/company_xfr
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ
=
labels3
transform/transform/Select:0	џџџџџџџџџ
S
features/dropoff_census_tract2
ParseExample/ParseExample:1	џџџџџџџџџ
C
features/fare2
ParseExample/ParseExample:5џџџџџџџџџ
N
features/trip_start_day3
ParseExample/ParseExample:14	џџџџџџџџџ
x
features/pickup_census_tract_xfU
>transform/transform/inputs/inputs/F_pickup_census_tract_copy:0	џџџџџџџџџ
P
features/pickup_longitude3
ParseExample/ParseExample:10џџџџџџџџџ
p
features/trip_start_hour_xfQ
:transform/transform/inputs/inputs/F_trip_start_hour_copy:0	џџџџџџџџџ
N
features/pickup_latitude2
ParseExample/ParseExample:9џџџџџџџџџ
K
features/payment_type2
ParseExample/ParseExample:6џџџџџџџџџ

tfma/version
	Const_2:0 
O
features/dropoff_latitude2
ParseExample/ParseExample:3џџџџџџџџџ

features/dropoff_latitude_xfj
Stransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose:0	џџџџџџџџџ
O
features/trip_start_hour3
ParseExample/ParseExample:15	џџџџџџџџџ
G
features/tips_xf3
transform/transform/Select:0	џџџџџџџџџ
|
!features/pickup_community_area_xfW
@transform/transform/inputs/inputs/F_pickup_community_area_copy:0	џџџџџџџџџ
P
features/trip_start_month3
ParseExample/ParseExample:16	џџџџџџџџџ
P
features/dropoff_longitude2
ParseExample/ParseExample:4џџџџџџџџџ

features/pickup_latitude_xfh
Qtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose:0	џџџџџџџџџ
U
features/dropoff_community_area2
ParseExample/ParseExample:2	џџџџџџџџџ

features/payment_type_xfp
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ
(

input_refs
range:0џџџџџџџџџ
T
features/trip_start_timestamp3
ParseExample/ParseExample:17	џџџџџџџџџ
D
features/tips3
ParseExample/ParseExample:11џџџџџџџџџ;
metrics/accuracy/update_op
metric_op_wrapper_1:0 =
metrics/average_loss/update_op
metric_op_wrapper:0 .
metrics/precision/value
Identity_47:0 G
&metrics/auc_precision_recall/update_op
metric_op_wrapper_8:0 2
predictions/logits
add:0џџџџџџџџџ+
metrics/recall/value
Identity_48:0 <
metrics/precision/update_op
metric_op_wrapper_2:0 K
predictions/all_classes0
head/predictions/Tile_1:0џџџџџџџџџ/
metrics/label/mean/value
Identity_50:0 6
metrics/auc/update_op
metric_op_wrapper_7:0 =
metrics/label/mean/update_op
metric_op_wrapper_5:0 T
predictions/probabilities7
 head/predictions/probabilities:0џџџџџџџџџ/
loss'
!head/losses/weighted_loss/value:0 (
metrics/auc/value
Identity_52:0 9
"metrics/auc_precision_recall/value
Identity_53:0 9
metrics/recall/update_op
metric_op_wrapper_3:0 D
#metrics/accuracy_baseline/update_op
metric_op_wrapper_6:0 M
predictions/class_ids4
head/predictions/ExpandDims:0	џџџџџџџџџK
predictions/all_class_ids.
head/predictions/Tile:0џџџџџџџџџ1
metrics/average_loss/value
Identity_45:0 -
metrics/accuracy/value
Identity_46:0 6
metrics/accuracy_baseline/value
Identity_51:0 L
predictions/classes5
head/predictions/str_classes:0џџџџџџџџџJ
predictions/logistic2
head/predictions/logistic:0џџџџџџџџџB
!metrics/prediction/mean/update_op
metric_op_wrapper_4:0 4
metrics/prediction/mean/value
Identity_49:0 tensorflow/supervised/eval