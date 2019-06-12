
package Paws::Personalize::DescribeCampaign;
  use Moose;
  has CampaignArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'campaignArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCampaign');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::DescribeCampaignResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeCampaign - Arguments for method DescribeCampaign on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCampaign on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method DescribeCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCampaign.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $DescribeCampaignResponse = $personalize->DescribeCampaign(
      CampaignArn => 'MyArn',

    );

    # Results:
    my $Campaign = $DescribeCampaignResponse->Campaign;

    # Returns a L<Paws::Personalize::DescribeCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/DescribeCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignArn => Str

The Amazon Resource Name (ARN) of the campaign.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCampaign in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

