package Paws::CodeDeploy::RawString;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', request_name => 'content', traits => ['NameInRequest']);
  has Sha256 => (is => 'ro', isa => 'Str', request_name => 'sha256', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::RawString

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::RawString object:

  $service_obj->Method(Att1 => { Content => $value, ..., Sha256 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::RawString object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

A revision for an AWS Lambda deployment that is a YAML-formatted or
JSON-formatted string. For AWS Lambda deployments, the revision is the
same as the AppSpec file.

=head1 ATTRIBUTES


=head2 Content => Str

  The YAML-formatted or JSON-formatted revision string. It includes
information about which Lambda function to update and optional Lambda
functions that validate deployment lifecycle events.


=head2 Sha256 => Str

  The SHA256 hash value of the revision content.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

