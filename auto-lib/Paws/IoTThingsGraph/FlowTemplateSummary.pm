# Generated from default/object.tt
package Paws::IoTThingsGraph::FlowTemplateSummary;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTThingsGraph::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has RevisionNumber => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'RevisionNumber' => {
                                     'type' => 'Int'
                                   }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'Arn' => 'arn',
                       'CreatedAt' => 'createdAt',
                       'RevisionNumber' => 'revisionNumber'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::FlowTemplateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::FlowTemplateSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., RevisionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::FlowTemplateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object that contains summary information about a workflow.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the workflow.


=head2 CreatedAt => Str

  The date when the workflow was created.


=head2 Id => Str

  The ID of the workflow.


=head2 RevisionNumber => Int

  The revision number of the workflow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

