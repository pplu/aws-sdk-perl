# Generated from default/object.tt
package Paws::CloudFormation::ParameterDeclaration;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CloudFormation::Types qw/CloudFormation_ParameterConstraints/;
  has DefaultValue => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has NoEcho => (is => 'ro', isa => Bool);
  has ParameterConstraints => (is => 'ro', isa => CloudFormation_ParameterConstraints);
  has ParameterKey => (is => 'ro', isa => Str);
  has ParameterType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ParameterConstraints' => {
                                           'type' => 'CloudFormation_ParameterConstraints',
                                           'class' => 'Paws::CloudFormation::ParameterConstraints'
                                         },
               'NoEcho' => {
                             'type' => 'Bool'
                           },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ParameterKey' => {
                                   'type' => 'Str'
                                 },
               'ParameterType' => {
                                    'type' => 'Str'
                                  },
               'DefaultValue' => {
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

Paws::CloudFormation::ParameterDeclaration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::ParameterDeclaration object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., ParameterType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::ParameterDeclaration object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

The ParameterDeclaration data type.

=head1 ATTRIBUTES


=head2 DefaultValue => Str

  The default value of the parameter.


=head2 Description => Str

  The description that is associate with the parameter.


=head2 NoEcho => Bool

  Flag that indicates whether the parameter value is shown as plain text
in logs and in the AWS Management Console.


=head2 ParameterConstraints => CloudFormation_ParameterConstraints

  The criteria that AWS CloudFormation uses to validate parameter values.


=head2 ParameterKey => Str

  The name that is associated with the parameter.


=head2 ParameterType => Str

  The type of parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

