package Paws::ES::AdvancedOptions;
  use Moose;
  with 'Paws::API::StrToNativeMapParser';

  has Map => (is => 'ro', isa => 'HashRef[Maybe[Str]]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::AdvancedOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::AdvancedOptions object:

  $service_obj->Method(Att1 => { key1 => $value, ..., keyN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::AdvancedOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Map->{ key1 }

=head1 DESCRIPTION

Exposes select native Elasticsearch configuration values from
C<elasticsearch.yml>. Currently, the following advanced options are
available:

=over

=item * Option to allow references to indices in an HTTP request body.
Must be C<false> when configuring access to individual sub-resources.
By default, the value is C<true>. See Configuration Advanced Options
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options)
for more information.

=item * Option to specify the percentage of heap space that is
allocated to field data. By default, this setting is unbounded.

=back

For more information, see Configuring Advanced Options
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options).

=head1 ATTRIBUTES

=head2 Map => Str

Use the Map method to retrieve a HashRef to the map

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

