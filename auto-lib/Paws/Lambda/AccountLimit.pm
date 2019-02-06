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

Limits related to concurrency and code storage. All file and storage
sizes are in bytes.

=head1 ATTRIBUTES


=head2 CodeSizeUnzipped => Int

  The maximum size of your function's code and layers when extracted.


=head2 CodeSizeZipped => Int

  The maximum size of a deployment package when uploaded direcly to AWS
Lambda. Use Amazon S3 for larger files.


=head2 ConcurrentExecutions => Int

  The maximum number of simultaneous function executions.


=head2 TotalCodeSize => Int

  The amount of storage space that you can use for all deployment
packages and layer archives.


=head2 UnreservedConcurrentExecutions => Int

  The maximum number of simultaneous function executions, less the
concurrency reserved for individual functions with
PutFunctionConcurrency.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

