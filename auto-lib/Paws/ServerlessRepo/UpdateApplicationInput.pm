package Paws::ServerlessRepo::UpdateApplicationInput;
  use Moose;
  has Author => (is => 'ro', isa => 'Str', request_name => 'author', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'labels', traits => ['NameInRequest']);
  has ReadmeBody => (is => 'ro', isa => 'Str', request_name => 'readmeBody', traits => ['NameInRequest']);
  has ReadmeUrl => (is => 'ro', isa => 'Str', request_name => 'readmeUrl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::UpdateApplicationInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::UpdateApplicationInput object:

  $service_obj->Method(Att1 => { Author => $value, ..., ReadmeUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::UpdateApplicationInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Author

=head1 DESCRIPTION

Update application request.

=head1 ATTRIBUTES


=head2 Author => Str

  The name of the author publishing the app.\nMin Length=1. Max
Length=127.\nPattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";


=head2 Description => Str

  The description of the application.\nMin Length=1. Max Length=256


=head2 Labels => ArrayRef[Str|Undef]

  Labels to improve discovery of apps in search results.\nMin Length=1.
Max Length=127. Maximum number of labels: 10\nPattern:
"^[a-zA-Z0-9+\\-_:\\/@]+$";


=head2 ReadmeBody => Str

  A raw text Readme file that contains a more detailed description of the
application and how it works in markdown language.\nMax size 5 MB


=head2 ReadmeUrl => Str

  A link to the Readme file that contains a more detailed description of
the application and how it works in markdown language.\nMax size 5 MB



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

