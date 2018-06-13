
package Paws::Lightsail::GetInstanceState;
  use Moose;
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetInstanceStateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceState - Arguments for method GetInstanceState on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstanceState on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetInstanceState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstanceState.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetInstanceStateResult = $lightsail->GetInstanceState(
      InstanceName => 'MyResourceName',

    );

    # Results:
    my $State = $GetInstanceStateResult->State;

    # Returns a L<Paws::Lightsail::GetInstanceStateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetInstanceState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceName => Str

The name of the instance to get state information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstanceState in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

