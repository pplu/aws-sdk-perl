package Paws::Lambda::AccountLimit;
  use Moose;
  has CodeSizeUnzipped => (is => 'ro', isa => 'Int');
  has CodeSizeZipped => (is => 'ro', isa => 'Int');
  has ConcurrentExecutions => (is => 'ro', isa => 'Int');
  has TotalCodeSize => (is => 'ro', isa => 'Int');
  has UnreservedConcurrentExecutions => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AccountLimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::AccountLimit object:

  $service_obj->Method(Att1 => { CodeSizeUnzipped => $value, ..., UnreservedConcurrentExecutions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::AccountLimit object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeSizeUnzipped

=head1 DESCRIPTION

Provides limits of code size and concurrency associated with the
current account and region.

=head1 ATTRIBUTES


=head2 CodeSizeUnzipped => Int

  Size, in bytes, of code/dependencies that you can zip into a deployment
package (uncompressed zip/jar size) for uploading. The default limit is
250 MB.


=head2 CodeSizeZipped => Int

  Size, in bytes, of a single zipped code/dependencies package you can
upload for your Lambda function(.zip/.jar file). Try using Amazon S3
for uploading larger files. Default limit is 50 MB.


=head2 ConcurrentExecutions => Int

  Number of simultaneous executions of your function per region. For more
information or to request a limit increase for concurrent executions,
see Lambda Function Concurrent Executions
(http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).
The default limit is 1000.


=head2 TotalCodeSize => Int

  Maximum size, in bytes, of a code package you can upload per region.
The default size is 75 GB.


=head2 UnreservedConcurrentExecutions => Int

  The number of concurrent executions available to functions that do not
have concurrency limits set. For more information, see
concurrent-executions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

