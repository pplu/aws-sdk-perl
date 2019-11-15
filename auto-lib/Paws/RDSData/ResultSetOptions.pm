package Paws::RDSData::ResultSetOptions;
  use Moose;
  has DecimalReturnType => (is => 'ro', isa => 'Str', request_name => 'decimalReturnType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ResultSetOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::ResultSetOptions object:

  $service_obj->Method(Att1 => { DecimalReturnType => $value, ..., DecimalReturnType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::ResultSetOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->DecimalReturnType

=head1 DESCRIPTION

Options that control how the result set is returned.

=head1 ATTRIBUTES


=head2 DecimalReturnType => Str

  A value that indicates how a field of C<DECIMAL> type is represented in
the response. The value of C<STRING>, the default, specifies that it is
converted to a String value. The value of C<DOUBLE_OR_LONG> specifies
that it is converted to a Long value if its scale is 0, or to a Double
value otherwise.

Conversion to Double or Long can result in roundoff errors due to
precision loss. We recommend converting to String, especially when
working with currency values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

