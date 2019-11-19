# Generated from default/object.tt
package Paws::ServerlessRepo::ChangeSetDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServerlessRepo::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has ChangeSetId => (is => 'ro', isa => Str, required => 1);
  has SemanticVersion => (is => 'ro', isa => Str, required => 1);
  has StackId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeSetId' => {
                                  'type' => 'Str'
                                },
               'StackId' => {
                              'type' => 'Str'
                            },
               'SemanticVersion' => {
                                      'type' => 'Str'
                                    },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'ChangeSetId' => 'changeSetId',
                       'StackId' => 'stackId',
                       'ApplicationId' => 'applicationId',
                       'SemanticVersion' => 'semanticVersion'
                     },
  'IsRequired' => {
                    'ChangeSetId' => 1,
                    'ApplicationId' => 1,
                    'SemanticVersion' => 1,
                    'StackId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ChangeSetDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::ChangeSetDetails object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., StackId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::ChangeSetDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Details of the change set.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The application Amazon Resource Name (ARN).


=head2 B<REQUIRED> ChangeSetId => Str

  The Amazon Resource Name (ARN) of the change set.

Length constraints: Minimum length of 1.

Pattern: ARN:[-a-zA-Z0-9:/]*


=head2 B<REQUIRED> SemanticVersion => Str

  The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 B<REQUIRED> StackId => Str

  The unique ID of the stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

