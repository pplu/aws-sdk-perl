
package Paws::SESv2::GetDomainDeliverabilityCampaign;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw//;
  has CampaignId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDomainDeliverabilityCampaign');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/deliverability-dashboard/campaigns/{CampaignId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::GetDomainDeliverabilityCampaignResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'CampaignId' => 'CampaignId'
                  },
  'types' => {
               'CampaignId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'CampaignId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDomainDeliverabilityCampaign - Arguments for method GetDomainDeliverabilityCampaign on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDomainDeliverabilityCampaign on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetDomainDeliverabilityCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDomainDeliverabilityCampaign.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetDomainDeliverabilityCampaignResponse =
      $email->GetDomainDeliverabilityCampaign(
      CampaignId => 'MyCampaignId',

      );

    # Results:
    my $DomainDeliverabilityCampaign =
      $GetDomainDeliverabilityCampaignResponse->DomainDeliverabilityCampaign;

    # Returns a L<Paws::SESv2::GetDomainDeliverabilityCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetDomainDeliverabilityCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignId => Str

The unique identifier for the campaign. The Deliverability dashboard
automatically generates and assigns this identifier to a campaign.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDomainDeliverabilityCampaign in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

