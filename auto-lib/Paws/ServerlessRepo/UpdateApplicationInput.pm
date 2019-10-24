# Generated from default/object.tt
package Paws::ServerlessRepo::UpdateApplicationInput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ServerlessRepo::Types qw//;
  has Author => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has HomePageUrl => (is => 'ro', isa => Str);
  has Labels => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ReadmeBody => (is => 'ro', isa => Str);
  has ReadmeUrl => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Labels' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'HomePageUrl' => {
                                  'type' => 'Str'
                                },
               'ReadmeBody' => {
                                 'type' => 'Str'
                               },
               'ReadmeUrl' => {
                                'type' => 'Str'
                              },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Author' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Labels' => 'labels',
                       'HomePageUrl' => 'homePageUrl',
                       'ReadmeBody' => 'readmeBody',
                       'ReadmeUrl' => 'readmeUrl',
                       'Description' => 'description',
                       'Author' => 'author'
                     }
}
;
    return $Params_map;
  }


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

Update the application request.

=head1 ATTRIBUTES


=head2 Author => Str

  The name of the author publishing the app.

Minimum length=1. Maximum length=127.

Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";


=head2 Description => Str

  The description of the application.

Minimum length=1. Maximum length=256


=head2 HomePageUrl => Str

  A URL with more information about the application, for example the
location of your GitHub repository for the application.


=head2 Labels => ArrayRef[Str|Undef]

  Labels to improve discovery of apps in search results.

Minimum length=1. Maximum length=127. Maximum number of labels: 10

Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";


=head2 ReadmeBody => Str

  A text readme file in Markdown language that contains a more detailed
description of the application and how it works.

Maximum size 5 MB


=head2 ReadmeUrl => Str

  A link to the readme file in Markdown language that contains a more
detailed description of the application and how it works.

Maximum size 5 MB



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

