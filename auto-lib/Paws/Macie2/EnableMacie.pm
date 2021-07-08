
package Paws::Macie2::EnableMacie;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has FindingPublishingFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'findingPublishingFrequency');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableMacie');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/macie');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::EnableMacieResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::EnableMacie - Arguments for method EnableMacie on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableMacie on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method EnableMacie.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableMacie.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $EnableMacieResponse = $macie2->EnableMacie(
      ClientToken                => 'My__string',         # OPTIONAL
      FindingPublishingFrequency => 'FIFTEEN_MINUTES',    # OPTIONAL
      Status                     => 'PAUSED',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/EnableMacie>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure the
idempotency of the request.



=head2 FindingPublishingFrequency => Str

Specifies how often to publish updates to policy findings for the
account. This includes publishing updates to Security Hub and Amazon
EventBridge (formerly called Amazon CloudWatch Events).

Valid values are: C<"FIFTEEN_MINUTES">, C<"ONE_HOUR">, C<"SIX_HOURS">

=head2 Status => Str

Specifies the new status for the account. To enable Amazon Macie and
start all Macie activities for the account, set this value to ENABLED.

Valid values are: C<"PAUSED">, C<"ENABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableMacie in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

