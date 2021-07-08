
package Paws::SSMIncidents::GetResponsePlan;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResponsePlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getResponsePlan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::GetResponsePlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::GetResponsePlan - Arguments for method GetResponsePlan on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResponsePlan on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method GetResponsePlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResponsePlan.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $GetResponsePlanOutput = $ssm -incidents->GetResponsePlan(
      Arn => 'MyArn',

    );

    # Results:
    my $Actions          = $GetResponsePlanOutput->Actions;
    my $Arn              = $GetResponsePlanOutput->Arn;
    my $ChatChannel      = $GetResponsePlanOutput->ChatChannel;
    my $DisplayName      = $GetResponsePlanOutput->DisplayName;
    my $Engagements      = $GetResponsePlanOutput->Engagements;
    my $IncidentTemplate = $GetResponsePlanOutput->IncidentTemplate;
    my $Name             = $GetResponsePlanOutput->Name;

    # Returns a L<Paws::SSMIncidents::GetResponsePlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/GetResponsePlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the response plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResponsePlan in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

