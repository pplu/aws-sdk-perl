# Generated from default/object.tt
package Paws::CodeBuild::EnvironmentPlatform;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CodeBuild::Types qw/CodeBuild_EnvironmentLanguage/;
  has Languages => (is => 'ro', isa => ArrayRef[CodeBuild_EnvironmentLanguage]);
  has Platform => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Platform' => {
                               'type' => 'Str'
                             },
               'Languages' => {
                                'class' => 'Paws::CodeBuild::EnvironmentLanguage',
                                'type' => 'ArrayRef[CodeBuild_EnvironmentLanguage]'
                              }
             },
  'NameInRequest' => {
                       'Platform' => 'platform',
                       'Languages' => 'languages'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::EnvironmentPlatform

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::EnvironmentPlatform object:

  $service_obj->Method(Att1 => { Languages => $value, ..., Platform => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::EnvironmentPlatform object:

  $result = $service_obj->Method(...);
  $result->Att1->Languages

=head1 DESCRIPTION

A set of Docker images that are related by platform and are managed by
AWS CodeBuild.

=head1 ATTRIBUTES


=head2 Languages => ArrayRef[CodeBuild_EnvironmentLanguage]

  The list of programming languages that are available for the specified
platform.


=head2 Platform => Str

  The platform's name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

