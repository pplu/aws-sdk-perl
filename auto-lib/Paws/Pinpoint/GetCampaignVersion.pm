
package Paws::Pinpoint::GetCampaignVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CampaignId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Version => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetCampaignVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Pinpoint::CampaignResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'Version' => {
                              'type' => 'Str'
                            },
               'CampaignId' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'ApplicationId' => 'application-id',
                    'Version' => 'version',
                    'CampaignId' => 'campaign-id'
                  },
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'Version' => 1,
                    'CampaignId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetCampaignVersion - Arguments for method GetCampaignVersion on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCampaignVersion on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetCampaignVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCampaignVersion.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $CampaignResponse = $pinpoint->GetCampaignVersion(
      ApplicationId => 'My__string',
      CampaignId    => 'My__string',
      Version       => 'My__string',

    );

    # Results:
    my $AdditionalTreatments = $CampaignResponse->AdditionalTreatments;
    my $ApplicationId        = $CampaignResponse->ApplicationId;
    my $Arn                  = $CampaignResponse->Arn;
    my $CreationDate         = $CampaignResponse->CreationDate;
    my $DefaultState         = $CampaignResponse->DefaultState;
    my $Description          = $CampaignResponse->Description;
    my $HoldoutPercent       = $CampaignResponse->HoldoutPercent;
    my $Hook                 = $CampaignResponse->Hook;
    my $Id                   = $CampaignResponse->Id;
    my $IsPaused             = $CampaignResponse->IsPaused;
    my $LastModifiedDate     = $CampaignResponse->LastModifiedDate;
    my $Limits               = $CampaignResponse->Limits;
    my $MessageConfiguration = $CampaignResponse->MessageConfiguration;
    my $Name                 = $CampaignResponse->Name;
    my $Schedule             = $CampaignResponse->Schedule;
    my $SegmentId            = $CampaignResponse->SegmentId;
    my $SegmentVersion       = $CampaignResponse->SegmentVersion;
    my $State                = $CampaignResponse->State;
    my $Tags                 = $CampaignResponse->Tags;
    my $TreatmentDescription = $CampaignResponse->TreatmentDescription;
    my $TreatmentName        = $CampaignResponse->TreatmentName;
    my $Version              = $CampaignResponse->Version;

    # Returns a L<Paws::Pinpoint::CampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/GetCampaignVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> CampaignId => Str

The unique identifier for the campaign.



=head2 B<REQUIRED> Version => Str

The unique version number (Version property) for the campaign version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCampaignVersion in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

