
package Paws::SecurityHub::DeleteActionTarget;
  use Moose;
  has ActionTargetArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ActionTargetArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteActionTarget');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/actionTargets/{ActionTargetArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DeleteActionTargetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DeleteActionTarget - Arguments for method DeleteActionTarget on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteActionTarget on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DeleteActionTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteActionTarget.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DeleteActionTargetResponse = $securityhub->DeleteActionTarget(
      ActionTargetArn => 'MyNonEmptyString',

    );

    # Results:
    my $ActionTargetArn = $DeleteActionTargetResponse->ActionTargetArn;

    # Returns a L<Paws::SecurityHub::DeleteActionTargetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DeleteActionTarget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTargetArn => Str

The ARN of the custom action target to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteActionTarget in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

