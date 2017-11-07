package Paws::CodePipeline::ThirdPartyJobDetails;
  use Moose;
  has Data => (is => 'ro', isa => 'Paws::CodePipeline::ThirdPartyJobData', request_name => 'data', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Nonce => (is => 'ro', isa => 'Str', request_name => 'nonce', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ThirdPartyJobDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ThirdPartyJobDetails object:

  $service_obj->Method(Att1 => { Data => $value, ..., Nonce => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ThirdPartyJobDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

The details of a job sent in response to a GetThirdPartyJobDetails
request.

=head1 ATTRIBUTES


=head2 Data => L<Paws::CodePipeline::ThirdPartyJobData>

  The data to be returned by the third party job worker.


=head2 Id => Str

  The identifier used to identify the job details in AWS CodePipeline.


=head2 Nonce => Str

  A system-generated random number that AWS CodePipeline uses to ensure
that the job is being worked on by only one job worker. Use this number
in an AcknowledgeThirdPartyJob request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

