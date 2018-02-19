package Paws::Exception::CredentialProcess;
  use Moose;
  extends 'Throwable::Error';

package Paws::Exception;
  use Moose;
  extends 'Throwable::Error';

  has code => (
    is => 'ro',
    isa => 'Str',
    required => 1,
  );

  has request_id => (
    is => 'ro',
    isa => 'Str',
    required => 1,
  );

  has http_status => (
    is => 'ro',
    isa => 'Int',
  );
1;
