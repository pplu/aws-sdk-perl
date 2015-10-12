package Paws::CodePipeline::AWSSessionCredentials;
  use Moose;
  has accessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has secretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has sessionToken => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::AWSSessionCredentials

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::AWSSessionCredentials object:

  $service_obj->Method(Att1 => { accessKeyId => $value, ..., sessionToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::AWSSessionCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->accessKeyId

=head1 ATTRIBUTES

=head2 B<REQUIRED> accessKeyId => Str

  The access key for the session.

=head2 B<REQUIRED> secretAccessKey => Str

  The secret access key for the session.

=head2 B<REQUIRED> sessionToken => Str

  The token for the session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

