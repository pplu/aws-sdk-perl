# Generated from default/object.tt
package Paws::SSM::FailureDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_AutomationParameterMap/;
  has Details => (is => 'ro', isa => SSM_AutomationParameterMap);
  has FailureStage => (is => 'ro', isa => Str);
  has FailureType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailureType' => {
                                  'type' => 'Str'
                                },
               'FailureStage' => {
                                   'type' => 'Str'
                                 },
               'Details' => {
                              'class' => 'Paws::SSM::AutomationParameterMap',
                              'type' => 'SSM_AutomationParameterMap'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::FailureDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::FailureDetails object:

  $service_obj->Method(Att1 => { Details => $value, ..., FailureType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::FailureDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

Information about an Automation failure.

=head1 ATTRIBUTES


=head2 Details => SSM_AutomationParameterMap

  Detailed information about the Automation step failure.


=head2 FailureStage => Str

  The stage of the Automation execution when the failure occurred. The
stages include the following: InputValidation, PreVerification,
Invocation, PostVerification.


=head2 FailureType => Str

  The type of Automation failure. Failure types include the following:
Action, Permission, Throttling, Verification, Internal.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

