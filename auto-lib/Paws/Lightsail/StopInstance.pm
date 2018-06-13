
package Paws::Lightsail::StopInstance;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::StopInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::StopInstance - Arguments for method StopInstance on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopInstance on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method StopInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopInstance.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $StopInstanceResult = $lightsail->StopInstance(
      InstanceName => 'MyResourceName',
      Force        => 1,                  # OPTIONAL
    );

    # Results:
    my $Operations = $StopInstanceResult->Operations;

    # Returns a L<Paws::Lightsail::StopInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/StopInstance>

=head1 ATTRIBUTES


=head2 Force => Bool

When set to C<True>, forces a Lightsail instance that is stuck in a
C<stopping> state to stop.

Only use the C<force> parameter if your instance is stuck in the
C<stopping> state. In any other state, your instance should stop
normally without adding this parameter to your API request.



=head2 B<REQUIRED> InstanceName => Str

The name of the instance (a virtual private server) to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopInstance in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

