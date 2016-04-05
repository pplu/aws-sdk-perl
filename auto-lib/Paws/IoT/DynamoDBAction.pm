package Paws::IoT::DynamoDBAction;
  use Moose;
  has HashKeyField => (is => 'ro', isa => 'Str', xmlname => 'hashKeyField', request_name => 'hashKeyField', traits => ['Unwrapped','NameInRequest'], required => 1);
  has HashKeyValue => (is => 'ro', isa => 'Str', xmlname => 'hashKeyValue', request_name => 'hashKeyValue', traits => ['Unwrapped','NameInRequest'], required => 1);
  has PayloadField => (is => 'ro', isa => 'Str', xmlname => 'payloadField', request_name => 'payloadField', traits => ['Unwrapped','NameInRequest']);
  has RangeKeyField => (is => 'ro', isa => 'Str', xmlname => 'rangeKeyField', request_name => 'rangeKeyField', traits => ['Unwrapped','NameInRequest'], required => 1);
  has RangeKeyValue => (is => 'ro', isa => 'Str', xmlname => 'rangeKeyValue', request_name => 'rangeKeyValue', traits => ['Unwrapped','NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', xmlname => 'roleArn', request_name => 'roleArn', traits => ['Unwrapped','NameInRequest'], required => 1);
  has TableName => (is => 'ro', isa => 'Str', xmlname => 'tableName', request_name => 'tableName', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DynamoDBAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::DynamoDBAction object:

  $service_obj->Method(Att1 => { HashKeyField => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::DynamoDBAction object:

  $result = $service_obj->Method(...);
  $result->Att1->HashKeyField

=head1 DESCRIPTION

Describes an action to write to a DynamoDB table.

The C<tableName>, C<hashKeyField>, and C<rangeKeyField> values must
match the values used when you created the table.

The C<hashKeyValue> and C<rangeKeyvalue> fields use a substitution
template syntax. These templates provide data at runtime. The syntax is
as follows: ${I<sql-expression>}.

You can specify any valid expression in a WHERE or SELECT clause,
including JSON properties, comparisons, calculations, and functions.
For example, the following field uses the third level of the topic:

C<"hashKeyValue": "${topic(3)}">

The following field uses the timestamp:

C<"rangeKeyValue": "${timestamp()}">

=head1 ATTRIBUTES


=head2 B<REQUIRED> HashKeyField => Str

  The hash key name.


=head2 B<REQUIRED> HashKeyValue => Str

  The hash key value.


=head2 PayloadField => Str

  The action payload. This name can be customized.


=head2 B<REQUIRED> RangeKeyField => Str

  The range key name.


=head2 B<REQUIRED> RangeKeyValue => Str

  The range key value.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the IAM role that grants access to the DynamoDB table.


=head2 B<REQUIRED> TableName => Str

  The name of the DynamoDB table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

