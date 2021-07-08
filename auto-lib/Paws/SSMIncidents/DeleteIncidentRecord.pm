
package Paws::SSMIncidents::DeleteIncidentRecord;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIncidentRecord');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deleteIncidentRecord');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::DeleteIncidentRecordOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::DeleteIncidentRecord - Arguments for method DeleteIncidentRecord on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIncidentRecord on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method DeleteIncidentRecord.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIncidentRecord.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $DeleteIncidentRecordOutput = $ssm -incidents->DeleteIncidentRecord(
      Arn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/DeleteIncidentRecord>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the incident record you are deleting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIncidentRecord in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

