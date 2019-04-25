
package Paws::CloudWatchLogs::ListTagsLogGroup;
  use Moose;
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsLogGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::ListTagsLogGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListTagsLogGroup - Arguments for method ListTagsLogGroup on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsLogGroup on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method ListTagsLogGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsLogGroup.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $ListTagsLogGroupResponse = $logs->ListTagsLogGroup(
      LogGroupName => 'MyLogGroupName',

    );

    # Results:
    my $Tags = $ListTagsLogGroupResponse->Tags;

    # Returns a L<Paws::CloudWatchLogs::ListTagsLogGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/ListTagsLogGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsLogGroup in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

