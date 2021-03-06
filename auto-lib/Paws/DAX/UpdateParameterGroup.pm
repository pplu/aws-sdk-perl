
package Paws::DAX::UpdateParameterGroup;
  use Moose;
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Paws::DAX::ParameterNameValue]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::UpdateParameterGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::UpdateParameterGroup - Arguments for method UpdateParameterGroup on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateParameterGroup on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method UpdateParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateParameterGroup.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $UpdateParameterGroupResponse = $dax->UpdateParameterGroup(
      ParameterGroupName  => 'MyString',
      ParameterNameValues => [
        {
          ParameterName  => 'MyString',
          ParameterValue => 'MyString',
        },
        ...
      ],

    );

    # Results:
    my $ParameterGroup = $UpdateParameterGroupResponse->ParameterGroup;

    # Returns a L<Paws::DAX::UpdateParameterGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/UpdateParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterGroupName => Str

The name of the parameter group.



=head2 B<REQUIRED> ParameterNameValues => ArrayRef[L<Paws::DAX::ParameterNameValue>]

An array of name-value pairs for the parameters in the group. Each
element in the array represents a single parameter.

C<record-ttl-millis> and C<query-ttl-millis> are the only supported
parameter names. For more details, see Configuring TTL Settings
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.cluster-management.html#DAX.cluster-management.custom-settings.ttl).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateParameterGroup in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

