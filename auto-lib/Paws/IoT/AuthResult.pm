# Generated from default/object.tt
package Paws::IoT::AuthResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw/IoT_Allowed IoT_Denied IoT_AuthInfo/;
  has Allowed => (is => 'ro', isa => IoT_Allowed);
  has AuthDecision => (is => 'ro', isa => Str);
  has AuthInfo => (is => 'ro', isa => IoT_AuthInfo);
  has Denied => (is => 'ro', isa => IoT_Denied);
  has MissingContextValues => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthDecision' => {
                                   'type' => 'Str'
                                 },
               'Allowed' => {
                              'class' => 'Paws::IoT::Allowed',
                              'type' => 'IoT_Allowed'
                            },
               'Denied' => {
                             'class' => 'Paws::IoT::Denied',
                             'type' => 'IoT_Denied'
                           },
               'AuthInfo' => {
                               'class' => 'Paws::IoT::AuthInfo',
                               'type' => 'IoT_AuthInfo'
                             },
               'MissingContextValues' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         }
             },
  'NameInRequest' => {
                       'AuthInfo' => 'authInfo',
                       'Denied' => 'denied',
                       'MissingContextValues' => 'missingContextValues',
                       'AuthDecision' => 'authDecision',
                       'Allowed' => 'allowed'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AuthResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuthResult object:

  $service_obj->Method(Att1 => { Allowed => $value, ..., MissingContextValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuthResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Allowed

=head1 DESCRIPTION

The authorizer result.

=head1 ATTRIBUTES


=head2 Allowed => IoT_Allowed

  The policies and statements that allowed the specified action.


=head2 AuthDecision => Str

  The final authorization decision of this scenario. Multiple statements
are taken into account when determining the authorization decision. An
explicit deny statement can override multiple allow statements.


=head2 AuthInfo => IoT_AuthInfo

  Authorization information.


=head2 Denied => IoT_Denied

  The policies and statements that denied the specified action.


=head2 MissingContextValues => ArrayRef[Str|Undef]

  Contains any missing context values found while evaluating policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

