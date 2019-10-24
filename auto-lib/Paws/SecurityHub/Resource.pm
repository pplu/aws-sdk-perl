# Generated from default/object.tt
package Paws::SecurityHub::Resource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw/SecurityHub_ResourceDetails SecurityHub_FieldMap/;
  has Details => (is => 'ro', isa => SecurityHub_ResourceDetails);
  has Id => (is => 'ro', isa => Str, required => 1);
  has Partition => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => SecurityHub_FieldMap);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Details' => {
                              'class' => 'Paws::SecurityHub::ResourceDetails',
                              'type' => 'SecurityHub_ResourceDetails'
                            },
               'Type' => {
                           'type' => 'Str'
                         },
               'Id' => {
                         'type' => 'Str'
                       },
               'Partition' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::SecurityHub::FieldMap',
                           'type' => 'SecurityHub_FieldMap'
                         },
               'Region' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'Type' => 1,
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Resource object:

  $service_obj->Method(Att1 => { Details => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

A resource related to a finding.

=head1 ATTRIBUTES


=head2 Details => SecurityHub_ResourceDetails

  Additional details about the resource related to a finding.


=head2 B<REQUIRED> Id => Str

  The canonical identifier for the given resource type.


=head2 Partition => Str

  The canonical AWS partition name that the Region is assigned to.


=head2 Region => Str

  The canonical AWS external Region name where this resource is located.


=head2 Tags => SecurityHub_FieldMap

  A list of AWS tags associated with a resource at the time the finding
was processed.


=head2 B<REQUIRED> Type => Str

  The type of the resource that details are provided for.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

