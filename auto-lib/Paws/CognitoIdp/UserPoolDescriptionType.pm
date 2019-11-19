# Generated from default/object.tt
package Paws::CognitoIdp::UserPoolDescriptionType;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_LambdaConfigType/;
  has CreationDate => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has LambdaConfig => (is => 'ro', isa => CognitoIdp_LambdaConfigType);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'LambdaConfig' => {
                                   'type' => 'CognitoIdp_LambdaConfigType',
                                   'class' => 'Paws::CognitoIdp::LambdaConfigType'
                                 },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Id' => {
                         'type' => 'Str'
                       },
               'Name' => {
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

Paws::CognitoIdp::UserPoolDescriptionType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UserPoolDescriptionType object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UserPoolDescriptionType object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

A user pool description.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The date the user pool description was created.


=head2 Id => Str

  The ID in a user pool description.


=head2 LambdaConfig => CognitoIdp_LambdaConfigType

  The AWS Lambda configuration information in a user pool description.


=head2 LastModifiedDate => Str

  The date the user pool description was last modified.


=head2 Name => Str

  The name in a user pool description.


=head2 Status => Str

  The user pool status in a user pool description.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

