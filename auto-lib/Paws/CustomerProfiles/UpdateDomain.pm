
package Paws::CustomerProfiles::UpdateDomain;
  use Moose;
  has DeadLetterQueueUrl => (is => 'ro', isa => 'Str');
  has DefaultEncryptionKey => (is => 'ro', isa => 'Str');
  has DefaultExpirationDays => (is => 'ro', isa => 'Int');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has Matching => (is => 'ro', isa => 'Paws::CustomerProfiles::MatchingRequest');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::UpdateDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::UpdateDomain - Arguments for method UpdateDomain on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomain on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method UpdateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomain.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $UpdateDomainResponse = $profile->UpdateDomain(
      DomainName            => 'Myname',
      DeadLetterQueueUrl    => 'MysqsQueueUrl',      # OPTIONAL
      DefaultEncryptionKey  => 'MyencryptionKey',    # OPTIONAL
      DefaultExpirationDays => 1,                    # OPTIONAL
      Matching              => {
        Enabled => 1,

      },                                             # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreatedAt             = $UpdateDomainResponse->CreatedAt;
    my $DeadLetterQueueUrl    = $UpdateDomainResponse->DeadLetterQueueUrl;
    my $DefaultEncryptionKey  = $UpdateDomainResponse->DefaultEncryptionKey;
    my $DefaultExpirationDays = $UpdateDomainResponse->DefaultExpirationDays;
    my $DomainName            = $UpdateDomainResponse->DomainName;
    my $LastUpdatedAt         = $UpdateDomainResponse->LastUpdatedAt;
    my $Matching              = $UpdateDomainResponse->Matching;
    my $Tags                  = $UpdateDomainResponse->Tags;

    # Returns a L<Paws::CustomerProfiles::UpdateDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/UpdateDomain>

=head1 ATTRIBUTES


=head2 DeadLetterQueueUrl => Str

The URL of the SQS dead letter queue, which is used for reporting
errors associated with ingesting data from third party applications. If
specified as an empty string, it will clear any existing value. You
must set up a policy on the DeadLetterQueue for the SendMessage
operation to enable Amazon Connect Customer Profiles to send messages
to the DeadLetterQueue.



=head2 DefaultEncryptionKey => Str

The default encryption key, which is an AWS managed key, is used when
no specific type of encryption key is specified. It is used to encrypt
all data before it is placed in permanent or semi-permanent storage. If
specified as an empty string, it will clear any existing value.



=head2 DefaultExpirationDays => Int

The default number of days until the data within the domain expires.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 Matching => L<Paws::CustomerProfiles::MatchingRequest>

The process of matching duplicate profiles. This process runs every
Saturday at 12AM.



=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomain in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

