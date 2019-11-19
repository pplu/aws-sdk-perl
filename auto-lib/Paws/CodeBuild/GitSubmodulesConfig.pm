# Generated from default/object.tt
package Paws::CodeBuild::GitSubmodulesConfig;
  use Moo;
  use Types::Standard qw/Bool/;
  use Paws::CodeBuild::Types qw//;
  has FetchSubmodules => (is => 'ro', isa => Bool, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FetchSubmodules' => {
                                      'type' => 'Bool'
                                    }
             },
  'IsRequired' => {
                    'FetchSubmodules' => 1
                  },
  'NameInRequest' => {
                       'FetchSubmodules' => 'fetchSubmodules'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::GitSubmodulesConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::GitSubmodulesConfig object:

  $service_obj->Method(Att1 => { FetchSubmodules => $value, ..., FetchSubmodules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::GitSubmodulesConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->FetchSubmodules

=head1 DESCRIPTION

Information about the Git submodules configuration for an AWS CodeBuild
build project.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FetchSubmodules => Bool

  Set to true to fetch Git submodules for your AWS CodeBuild build
project.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

