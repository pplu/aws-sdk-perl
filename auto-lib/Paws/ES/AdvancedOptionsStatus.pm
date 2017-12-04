package Paws::ES::AdvancedOptionsStatus;
  use Moose;
  has Options => (is => 'ro', isa => 'Paws::ES::AdvancedOptions', required => 1);
  has Status => (is => 'ro', isa => 'Paws::ES::OptionStatus', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::AdvancedOptionsStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::AdvancedOptionsStatus object:

  $service_obj->Method(Att1 => { Options => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::AdvancedOptionsStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Options

=head1 DESCRIPTION

Status of the advanced options for the specified Elasticsearch domain.
Currently, the following advanced options are available:

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


=head2 B<REQUIRED> Options => L<Paws::ES::AdvancedOptions>

  Specifies the status of advanced options for the specified
Elasticsearch domain.


=head2 B<REQUIRED> Status => L<Paws::ES::OptionStatus>

  Specifies the status of C<OptionStatus> for advanced options for the
specified Elasticsearch domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

