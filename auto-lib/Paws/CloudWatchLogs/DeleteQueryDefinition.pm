
package Paws::CloudWatchLogs::DeleteQueryDefinition;
  use Moose;
  has QueryDefinitionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryDefinitionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteQueryDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DeleteQueryDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DeleteQueryDefinition - Arguments for method DeleteQueryDefinition on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteQueryDefinition on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DeleteQueryDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteQueryDefinition.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DeleteQueryDefinitionResponse = $logs->DeleteQueryDefinition(
      QueryDefinitionId => 'MyQueryId',

    );

    # Results:
    my $Success = $DeleteQueryDefinitionResponse->Success;

    # Returns a L<Paws::CloudWatchLogs::DeleteQueryDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DeleteQueryDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryDefinitionId => Str

The ID of the query definition that you want to delete. You can use
DescribeQueryDefinitions
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html)
to retrieve the IDs of your saved query definitions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteQueryDefinition in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

