# Generated by default/object.tt
package Paws::CustomerProfiles::ConnectorOperator;
  use Moose;
  has Marketo => (is => 'ro', isa => 'Str');
  has S3 => (is => 'ro', isa => 'Str');
  has Salesforce => (is => 'ro', isa => 'Str');
  has ServiceNow => (is => 'ro', isa => 'Str');
  has Zendesk => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ConnectorOperator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::ConnectorOperator object:

  $service_obj->Method(Att1 => { Marketo => $value, ..., Zendesk => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::ConnectorOperator object:

  $result = $service_obj->Method(...);
  $result->Att1->Marketo

=head1 DESCRIPTION

The operation to be performed on the provided source fields.

=head1 ATTRIBUTES


=head2 Marketo => Str

The operation to be performed on the provided Marketo source fields.


=head2 S3 => Str

The operation to be performed on the provided Amazon S3 source fields.


=head2 Salesforce => Str

The operation to be performed on the provided Salesforce source fields.


=head2 ServiceNow => Str

The operation to be performed on the provided ServiceNow source fields.


=head2 Zendesk => Str

The operation to be performed on the provided Zendesk source fields.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

