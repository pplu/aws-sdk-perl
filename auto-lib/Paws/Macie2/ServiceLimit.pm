# Generated by default/object.tt
package Paws::Macie2::ServiceLimit;
  use Moose;
  has IsServiceLimited => (is => 'ro', isa => 'Bool', request_name => 'isServiceLimited', traits => ['NameInRequest']);
  has Unit => (is => 'ro', isa => 'Str', request_name => 'unit', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Int', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ServiceLimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::ServiceLimit object:

  $service_obj->Method(Att1 => { IsServiceLimited => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::ServiceLimit object:

  $result = $service_obj->Method(...);
  $result->Att1->IsServiceLimited

=head1 DESCRIPTION

Specifies a current quota for an Amazon Macie account.

=head1 ATTRIBUTES


=head2 IsServiceLimited => Bool

Specifies whether the account has met the quota that corresponds to the
metric specified by the UsageByAccount.type field in the response.


=head2 Unit => Str

The unit of measurement for the value specified by the value field.


=head2 Value => Int

The value for the metric specified by the UsageByAccount.type field in
the response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

