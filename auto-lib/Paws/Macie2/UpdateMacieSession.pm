
package Paws::Macie2::UpdateMacieSession;
  use Moose;
  has FindingPublishingFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'findingPublishingFrequency');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMacieSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/macie');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateMacieSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateMacieSession - Arguments for method UpdateMacieSession on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMacieSession on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateMacieSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMacieSession.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateMacieSessionResponse = $macie2->UpdateMacieSession(
      FindingPublishingFrequency => 'FIFTEEN_MINUTES',    # OPTIONAL
      Status                     => 'PAUSED',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateMacieSession>

=head1 ATTRIBUTES


=head2 FindingPublishingFrequency => Str

Specifies how often to publish updates to policy findings for the
account. This includes publishing updates to Security Hub and Amazon
EventBridge (formerly called Amazon CloudWatch Events).

Valid values are: C<"FIFTEEN_MINUTES">, C<"ONE_HOUR">, C<"SIX_HOURS">

=head2 Status => Str

Specifies a new status for the account. Valid values are: ENABLED,
resume all Amazon Macie activities for the account; and, PAUSED,
suspend all Macie activities for the account.

Valid values are: C<"PAUSED">, C<"ENABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMacieSession in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

