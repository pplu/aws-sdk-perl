
package Paws::SecurityHub::UpdateStandardsControl;
  use Moose;
  has ControlStatus => (is => 'ro', isa => 'Str');
  has DisabledReason => (is => 'ro', isa => 'Str');
  has StandardsControlArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'StandardsControlArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStandardsControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/standards/control/{StandardsControlArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::UpdateStandardsControlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::UpdateStandardsControl - Arguments for method UpdateStandardsControl on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStandardsControl on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method UpdateStandardsControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStandardsControl.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $UpdateStandardsControlResponse = $securityhub->UpdateStandardsControl(
      StandardsControlArn => 'MyNonEmptyString',
      ControlStatus       => 'ENABLED',             # OPTIONAL
      DisabledReason      => 'MyNonEmptyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/UpdateStandardsControl>

=head1 ATTRIBUTES


=head2 ControlStatus => Str

The updated status of the security standard control.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 DisabledReason => Str

A description of the reason why you are disabling a security standard
control. If you are disabling a control, then this is required.



=head2 B<REQUIRED> StandardsControlArn => Str

The ARN of the security standard control to enable or disable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStandardsControl in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

