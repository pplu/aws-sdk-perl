# Generated from default/object.tt
package Paws::ServerlessRepo::ApplicationDependencySummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServerlessRepo::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has SemanticVersion => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'SemanticVersion' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'ApplicationId' => 'applicationId',
                       'SemanticVersion' => 'semanticVersion'
                     },
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'SemanticVersion' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ApplicationDependencySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::ApplicationDependencySummary object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., SemanticVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::ApplicationDependencySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

A nested application summary.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The Amazon Resource Name (ARN) of the nested application.


=head2 B<REQUIRED> SemanticVersion => Str

  The semantic version of the nested application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

