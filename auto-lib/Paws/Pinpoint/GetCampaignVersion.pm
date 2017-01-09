
package Paws::Pinpoint::GetCampaignVersion;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id' , required => 1);
  has CampaignId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'campaign-id' , required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'version' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCampaignVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::GetCampaignVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetCampaignVersion - Arguments for method GetCampaignVersion on Paws::Pinpoint

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCampaignVersion on the 
Amazon Pinpoint service. Use the attributes of this class
as arguments to method GetCampaignVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCampaignVersion.

As an example:

  $service_obj->GetCampaignVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> CampaignId => Str





=head2 B<REQUIRED> Version => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCampaignVersion in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

