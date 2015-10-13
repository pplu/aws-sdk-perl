package Paws::CodePipeline::ThirdPartyJob;
  use Moose;
  has clientId => (is => 'ro', isa => 'Str');
  has jobId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ThirdPartyJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ThirdPartyJob object:

  $service_obj->Method(Att1 => { clientId => $value, ..., jobId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ThirdPartyJob object:

  $result = $service_obj->Method(...);
  $result->Att1->clientId

=head1 DESCRIPTION

A response to a PollForThirdPartyJobs request returned by AWS
CodePipeline when there is a job to be worked upon by a partner action.

=head1 ATTRIBUTES

=head2 clientId => Str

  The clientToken portion of the clientId and clientToken pair used to
verify that the calling entity is allowed access to the job and its
details.

=head2 jobId => Str

  The identifier used to identify the job in AWS CodePipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

