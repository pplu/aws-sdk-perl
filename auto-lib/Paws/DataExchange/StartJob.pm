
package Paws::DataExchange::StartJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'JobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/jobs/{JobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::StartJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::StartJob - Arguments for method StartJob on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartJob on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method StartJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartJob.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $StartJobResponse = $dataexchange->StartJob(
      JobId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/StartJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The unique identifier for a job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartJob in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

