# Generated from default/object.tt
package Paws::IoTThingsGraph::SystemTemplateSummary;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTThingsGraph::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has RevisionNumber => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RevisionNumber' => 'revisionNumber',
                       'CreatedAt' => 'createdAt',
                       'Id' => 'id',
                       'Arn' => 'arn'
                     },
  'types' => {
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'RevisionNumber' => {
                                     'type' => 'Int'
                                   },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
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

Paws::IoTThingsGraph::SystemTemplateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::SystemTemplateSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., RevisionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::SystemTemplateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object that contains information about a system.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the system.


=head2 CreatedAt => Str

  The date when the system was created.


=head2 Id => Str

  The ID of the system.


=head2 RevisionNumber => Int

  The revision number of the system.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

