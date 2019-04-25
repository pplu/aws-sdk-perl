package Paws::CodeBuild::SourceAuth;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str', request_name => 'resource', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::SourceAuth

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::SourceAuth object:

  $service_obj->Method(Att1 => { Resource => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::SourceAuth object:

  $result = $service_obj->Method(...);
  $result->Att1->Resource

=head1 DESCRIPTION

Information about the authorization settings for AWS CodeBuild to
access the source code to be built.

This information is for the AWS CodeBuild console's use only. Your code
should not get or set this information directly.

=head1 ATTRIBUTES


=head2 Resource => Str

  The resource value that applies to the specified authorization type.


=head2 B<REQUIRED> Type => Str

  This data type is deprecated and is no longer accurate or used.

The authorization type to use. The only valid value is C<OAUTH>, which
represents the OAuth authorization type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

