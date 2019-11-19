
package Paws::PinpointEmail::ListDomainDeliverabilityCampaigns;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::PinpointEmail::Types qw//;
  has EndDate => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has PageSize => (is => 'ro', isa => Int, predicate => 1);
  has StartDate => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SubscribedDomain => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListDomainDeliverabilityCampaigns');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::PinpointEmail::ListDomainDeliverabilityCampaignsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'SubscribedDomain' => 'SubscribedDomain'
                  },
  'ParamInQuery' => {
                      'EndDate' => 'EndDate',
                      'PageSize' => 'PageSize',
                      'NextToken' => 'NextToken',
                      'StartDate' => 'StartDate'
                    },
  'IsRequired' => {
                    'SubscribedDomain' => 1,
                    'EndDate' => 1,
                    'StartDate' => 1
                  },
  'types' => {
               'PageSize' => {
                               'type' => 'Int'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'StartDate' => {
                                'type' => 'Str'
                              },
               'SubscribedDomain' => {
                                       'type' => 'Str'
                                     },
               'EndDate' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::ListDomainDeliverabilityCampaigns - Arguments for method ListDomainDeliverabilityCampaigns on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomainDeliverabilityCampaigns on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method ListDomainDeliverabilityCampaigns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDomainDeliverabilityCampaigns.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $ListDomainDeliverabilityCampaignsResponse =
      $email->ListDomainDeliverabilityCampaigns(
      EndDate          => '1970-01-01T01:00:00',
      StartDate        => '1970-01-01T01:00:00',
      SubscribedDomain => 'MyDomain',
      NextToken        => 'MyNextToken',           # OPTIONAL
      PageSize         => 1,                       # OPTIONAL
      );

    # Results:
    my $DomainDeliverabilityCampaigns =
      $ListDomainDeliverabilityCampaignsResponse->DomainDeliverabilityCampaigns;
    my $NextToken = $ListDomainDeliverabilityCampaignsResponse->NextToken;

# Returns a L<Paws::PinpointEmail::ListDomainDeliverabilityCampaignsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListDomainDeliverabilityCampaigns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndDate => Str

The last day, in Unix time format, that you want to obtain
deliverability data for. This value has to be less than or equal to 30
days after the value of the C<StartDate> parameter.



=head2 NextToken => Str

A token thatE<rsquo>s returned from a previous call to the
C<ListDomainDeliverabilityCampaigns> operation. This token indicates
the position of a campaign in the list of campaigns.



=head2 PageSize => Int

The maximum number of results to include in response to a single call
to the C<ListDomainDeliverabilityCampaigns> operation. If the number of
results is larger than the number that you specify in this parameter,
the response includes a C<NextToken> element, which you can use to
obtain additional results.



=head2 B<REQUIRED> StartDate => Str

The first day, in Unix time format, that you want to obtain
deliverability data for.



=head2 B<REQUIRED> SubscribedDomain => Str

The domain to obtain deliverability data for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDomainDeliverabilityCampaigns in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

