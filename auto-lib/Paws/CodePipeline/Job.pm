package Paws::CodePipeline::Job;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', xmlname => 'accountId', request_name => 'accountId', traits => ['Unwrapped','NameInRequest']);
  has Data => (is => 'ro', isa => 'Paws::CodePipeline::JobData', xmlname => 'data', request_name => 'data', traits => ['Unwrapped','NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', xmlname => 'id', request_name => 'id', traits => ['Unwrapped','NameInRequest']);
  has Nonce => (is => 'ro', isa => 'Str', xmlname => 'nonce', request_name => 'nonce', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::Job

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::Job object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Nonce => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::Job object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Represents information about a job.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The ID of the AWS account to use when performing the job.


=head2 Data => L<Paws::CodePipeline::JobData>

  Additional data about a job.


=head2 Id => Str

  The unique system-generated ID of the job.


=head2 Nonce => Str

  A system-generated random number that AWS CodePipeline uses to ensure
that the job is being worked on by only one job worker. Use this number
in an AcknowledgeJob request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

