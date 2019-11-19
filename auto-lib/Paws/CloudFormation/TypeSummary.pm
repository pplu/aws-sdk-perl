# Generated from default/object.tt
package Paws::CloudFormation::TypeSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has DefaultVersionId => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has LastUpdated => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has TypeArn => (is => 'ro', isa => Str);
  has TypeName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastUpdated' => {
                                  'type' => 'Str'
                                },
               'DefaultVersionId' => {
                                       'type' => 'Str'
                                     },
               'Type' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'TypeArn' => {
                              'type' => 'Str'
                            },
               'TypeName' => {
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

Paws::CloudFormation::TypeSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::TypeSummary object:

  $service_obj->Method(Att1 => { DefaultVersionId => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::TypeSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultVersionId

=head1 DESCRIPTION

Contains summary information about the specified CloudFormation type.

=head1 ATTRIBUTES


=head2 DefaultVersionId => Str

  The ID of the default version of the type. The default version is used
when the type version is not specified.

To set the default version of a type, use C< SetTypeDefaultVersion >.


=head2 Description => Str

  The description of the type.


=head2 LastUpdated => Str

  When the current default version of the type was registered.


=head2 Type => Str

  The kind of type.


=head2 TypeArn => Str

  The Amazon Resource Name (ARN) of the type.


=head2 TypeName => Str

  The name of the type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

