# Generated from default/object.tt
package Paws::ServerlessRepo::VersionSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServerlessRepo::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has SemanticVersion => (is => 'ro', isa => Str, required => 1);
  has SourceCodeUrl => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CreationTime' => 'creationTime',
                       'ApplicationId' => 'applicationId',
                       'SemanticVersion' => 'semanticVersion',
                       'SourceCodeUrl' => 'sourceCodeUrl'
                     },
  'IsRequired' => {
                    'SemanticVersion' => 1,
                    'ApplicationId' => 1,
                    'CreationTime' => 1
                  },
  'types' => {
               'SemanticVersion' => {
                                      'type' => 'Str'
                                    },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'SourceCodeUrl' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::VersionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::VersionSummary object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., SourceCodeUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::VersionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

An application version summary.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The application Amazon Resource Name (ARN).


=head2 B<REQUIRED> CreationTime => Str

  The date and time this resource was created.


=head2 B<REQUIRED> SemanticVersion => Str

  The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 SourceCodeUrl => Str

  A link to a public repository for the source code of your application,
for example the URL of a specific GitHub commit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

