
package Paws::CloudWatch::GetMetricStream;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::GetMetricStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetMetricStreamResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricStream - Arguments for method GetMetricStream on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetricStream on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method GetMetricStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetricStream.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $GetMetricStreamOutput = $monitoring->GetMetricStream(
      Name => 'MyMetricStreamName',

    );

    # Results:
    my $Arn            = $GetMetricStreamOutput->Arn;
    my $CreationDate   = $GetMetricStreamOutput->CreationDate;
    my $ExcludeFilters = $GetMetricStreamOutput->ExcludeFilters;
    my $FirehoseArn    = $GetMetricStreamOutput->FirehoseArn;
    my $IncludeFilters = $GetMetricStreamOutput->IncludeFilters;
    my $LastUpdateDate = $GetMetricStreamOutput->LastUpdateDate;
    my $Name           = $GetMetricStreamOutput->Name;
    my $OutputFormat   = $GetMetricStreamOutput->OutputFormat;
    my $RoleArn        = $GetMetricStreamOutput->RoleArn;
    my $State          = $GetMetricStreamOutput->State;

    # Returns a L<Paws::CloudWatch::GetMetricStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/GetMetricStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the metric stream to retrieve information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricStream in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

