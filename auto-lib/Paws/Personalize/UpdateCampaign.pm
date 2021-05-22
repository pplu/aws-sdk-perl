
package Paws::Personalize::UpdateCampaign;
  use Moose;
  has CampaignArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'campaignArn' , required => 1);
  has CampaignConfig => (is => 'ro', isa => 'Paws::Personalize::CampaignConfig', traits => ['NameInRequest'], request_name => 'campaignConfig' );
  has MinProvisionedTPS => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minProvisionedTPS' );
  has SolutionVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionVersionArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCampaign');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::UpdateCampaignResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::UpdateCampaign - Arguments for method UpdateCampaign on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCampaign on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method UpdateCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCampaign.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $UpdateCampaignResponse = $personalize->UpdateCampaign(
      CampaignArn    => 'MyArn',
      CampaignConfig => {
        ItemExplorationConfig => {
          'MyParameterName' =>
            'MyParameterValue',    # key: max: 256, value: max: 1000
        },    # max: 100; OPTIONAL
      },    # OPTIONAL
      MinProvisionedTPS  => 1,          # OPTIONAL
      SolutionVersionArn => 'MyArn',    # OPTIONAL
    );

    # Results:
    my $CampaignArn = $UpdateCampaignResponse->CampaignArn;

    # Returns a L<Paws::Personalize::UpdateCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/UpdateCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignArn => Str

The Amazon Resource Name (ARN) of the campaign.



=head2 CampaignConfig => L<Paws::Personalize::CampaignConfig>

The configuration details of a campaign.



=head2 MinProvisionedTPS => Int

Specifies the requested minimum provisioned transactions
(recommendations) per second that Amazon Personalize will support.



=head2 SolutionVersionArn => Str

The ARN of a new solution version to deploy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCampaign in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

