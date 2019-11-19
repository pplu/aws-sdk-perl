# Generated from default/object.tt
package Paws::SageMaker::MemberDefinition;
  use Moo;
  use Types::Standard qw//;
  use Paws::SageMaker::Types qw/SageMaker_CognitoMemberDefinition/;
  has CognitoMemberDefinition => (is => 'ro', isa => SageMaker_CognitoMemberDefinition);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CognitoMemberDefinition' => {
                                              'class' => 'Paws::SageMaker::CognitoMemberDefinition',
                                              'type' => 'SageMaker_CognitoMemberDefinition'
                                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::MemberDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::MemberDefinition object:

  $service_obj->Method(Att1 => { CognitoMemberDefinition => $value, ..., CognitoMemberDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::MemberDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->CognitoMemberDefinition

=head1 DESCRIPTION

Defines the Amazon Cognito user group that is part of a work team.

=head1 ATTRIBUTES


=head2 CognitoMemberDefinition => SageMaker_CognitoMemberDefinition

  The Amazon Cognito user group that is part of the work team.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

