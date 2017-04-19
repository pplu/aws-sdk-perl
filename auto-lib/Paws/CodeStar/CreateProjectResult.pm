
package Paws::CodeStar::CreateProjectResult;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'arn' , required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientRequestToken' );
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id' , required => 1);
  has ProjectTemplateId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'projectTemplateId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::CreateProjectResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) for the project.


=head2 ClientRequestToken => Str

The user- or system-generated token from the initial request that can
be used to repeat the request. It can also be used to identify which
user or system made the request in DescribeProject and ListProjects.


=head2 B<REQUIRED> Id => Str

The ID for the project.


=head2 ProjectTemplateId => Str

The ID for the AWS CodeStar project template used to create the
project.


=head2 _request_id => Str


=cut

1;