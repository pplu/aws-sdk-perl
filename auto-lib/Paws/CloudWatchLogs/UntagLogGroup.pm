
package Paws::CloudWatchLogs::UntagLogGroup;
  use Moose;
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'tags' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagLogGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::UntagLogGroup - Arguments for method UntagLogGroup on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagLogGroup on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method UntagLogGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagLogGroup.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->UntagLogGroup(
      LogGroupName => 'MyLogGroupName',
      Tags         => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/UntagLogGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.



=head2 B<REQUIRED> Tags => ArrayRef[Str|Undef]

The tag keys. The corresponding tags are removed from the log group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagLogGroup in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

